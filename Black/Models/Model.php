<?php
namespace Black\Models;

class Model extends \PDO
{
    public $sql;
    public $query;
    public $return = 'multiple';  // 'multiple' | 'single'
    public $table;
    public $entity;
    public $mapAs;
    public $limit;
    public $inputParameters;
    public $connection;

    public function __construct()
    {
        try
        {
            $config = \Black\Config\Config::$appConfig;
            parent::__construct(
                "mysql:host={$config->site->databaseHost};dbname={$config->site->databaseName}",
                $config->site->databaseUser,
                $config->site->databasePassword,
                array(
                    \PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8';"
                )
            );
            $this->exec("SET CHARACTER SET utf8");
            $this->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            $this->query("set names utf8");
        } catch (\PDOException $e)
        {
            echo "PDO Error " . $e->getMessage();
        }

    }

    public function setEntity($entity) {
        if (is_string($entity)) {
            $entity = \Black\Entity\Manager::getEntity($entity);
        }

        $this->entity = $entity;
        $this->setTable($entity->tableName);
        $this->mapAs($entity->name);
    }

    public function setTable($table) {
        $this->table = $table;
    }


    public function getAll()
    {
        $this->sql = "SELECT * FROM {$this->table} [CONDITIONS] [ORDERBY] [LIMIT]";
        $this->return = 'multiple';
        return $this;
    }

    public function getById($id)
    {
        $this->inputParameters = array($id);
        $this->sql = "SELECT * FROM {$this->table} WHERE id=?";
        $this->return = 'single';
        $this->execute();
        return $this->fetch();
    }

    public function getMaxId()
    {
        $result = '1';
        $this->sql = "SELECT MAX(id) AS max FROM {$this->table}";
        $this->return = 'single';
        $this->execute();
        $rs = $this->fetch();

        if (!empty($rs) && !empty($rs->max)) {
            $result = !empty($rs->max) ? $rs->max : $result;
        }

        return $result;
    }

    public function insert($data)
    {
        $insertData = array();
        foreach ($data as $key => $value) {
            if (is_array($value)) {
                $value = serialize($value);
            }
            if ($key !== 'id') {
                $insertData[$key] = $value;
            }

        }
        $insertData['date_created'] = date("Y-m-d H:i:s");
        $insertData['date_modified'] = date("Y-m-d H:i:s");

        $this->inputParameters = array_values($insertData);

        $cols = array_keys($insertData);
        $col = implode(', ', $cols);

        $mark = array();
        foreach ($this->inputParameters as $key) {
          $keys = '?';
          $mark[] = $keys;
        }

        $im = implode(', ', $mark);
        $this->sql = "INSERT INTO {$this->table} ($col) values ($im)";

        $this->execute();
        return $this->query;
    }

    public function updateById($id, $data)
    {
        $updateData = array();
        foreach ($data as $key => $value) {
            if (is_array($value)) {
                $value = serialize($value);
            }
            if ($key !== 'id') {
                $updateData[$key] = $value;
            }

        }
        $updateData['date_modified'] = date("Y-m-d H:i:s");

        $this->inputParameters = array_values($updateData);
        array_push($this->inputParameters, $id);
        //grab keys
        $cols = array_keys($updateData);
        $mark = array();
        foreach ($cols as $col) {
            $mark[] = $col."=?";
        }
        $im = implode(', ', $mark);

        $this->sql = "UPDATE {$this->table} SET $im where id = ?";
        $this->execute();
        return $this->query;
    }

    public function mapAs($className)
    {
        $this->mapAs = '\\Application\\Entity\\' . $className;
        return $this;
    }

    public function setConditions($conditions)
    {
        $this->inputParameters = array_values($conditions);
        $this->whereColumns = array_keys($conditions);
        return $this;
    }

    public function setConditionsIn($conditions)
    {
        $this->inputParameters = array();
        foreach ($conditions as $key => $values) {
            foreach ($values as $k => $v) {
                $this->inputParameters[] = $v;
            }
        }

        $this->whereInColumns = array_keys($conditions);
        return $this;
    }

    public function setLikeConditions($conditions)
    {
        $this->inputParameters = array();
        foreach ($conditions as $key => $value) {
            $this->inputParameters[] = '%' . $value . '%';
        }
        $this->whereLikeColumns = array_keys($conditions);
        return $this;
    }


    public function setLimit($limit)
    {
        $this->limit = (array)$limit;
        return $this;
    }


    public function orderBy($orderBy)
    {
        $this->orderBy = $orderBy;
        return $this;
    }

    public function execute()
    {
        $this->query = $this->prepare($this->getSql());
        if (!empty($this->mapAs)) {
            $this->query->setFetchMode(\PDO::FETCH_CLASS, $this->mapAs);
        }

        $this->query->execute($this->inputParameters);

        return $this;
    }

    public function getSql()
    {
        $stringConditions = '';
        $stringOrderBy = '';

        if (!empty($this->whereInColumns)) {

            foreach ($this->inputParameters as $key) {
                $keys = " ?";
                $mark[] = $keys;
            }

            foreach ($this->whereInColumns as $key) {
                $cols[] = $key . ' IN (' . implode(',  ', $mark) . ')';
            }

            $stringConditions = ' WHERE ' . implode(' OR ', $cols);
        }

        if (!empty($this->whereLikeColumns)) {
            foreach ($this->whereLikeColumns as $key) {
                $keys = $key . " LIKE ?";
                $mark[] = $keys;
            }

            $stringConditions = ' WHERE ' . implode(' OR  ', $mark);

        }

        if (!empty($this->whereColumns)) {
            foreach ($this->whereColumns as $key) {
                $keys = $key . "=?";
                $mark[] = $keys;
            }

            $stringConditions = ' WHERE ' . implode(' AND  ', $mark);

        }

        if (!empty($this->orderBy)) {
            foreach ($this->orderBy as $key => $val) {
                $order[] = $key . " " . $val;
            }

            $stringOrderBy = ' ORDER BY ' . implode(' ,  ', $order);
        }


        $stringLimit = '';
        if (!empty($this->limit)) {
            $stringLimit = ' LIMIT ' . implode(', ', $this->limit);
        }

        $this->sql = str_ireplace('[CONDITIONS]', $stringConditions, $this->sql);
        $this->sql = str_ireplace('[ORDERBY]', $stringOrderBy, $this->sql);
        $this->sql = str_ireplace('[LIMIT]', $stringLimit, $this->sql);

        return $this->sql;
    }

    public function fetchAll()
    {
        $this->execute();

        $results = $this->query->fetchAll();
        return $results;
    }

    public function fetch()
    {
        $this->execute();

        $results = $this->query->fetch();
        return $results;
    }
}
