<?php
namespace Black\Database;

class Database
{
    public $connection;
    public $host = "";
    public $username = "";
    public $password = "";
    public $dbname = "";

    public function __construct(){
    }

    public function connect()
    {
        if (empty($this->connection)) {
            $this->connection = new \PDO(
                "mysql:host=$this->host;dbname=$this->dbname",
                $this->username,
                $this->password,
                array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
            );

            $this->connection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        }
        return $this;
    }

    public function getTableDefinition($tableName)
    {
        $q = $this->connection->prepare("DESCRIBE {$tableName}");
        $q->execute();
        return $q->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function insert($table, $data, $delayed = false)
    {
        if (!in_array('date_created', $data)) {
            $data['date_created'] = 'NOW()';
        }

        if (!in_array('date_modified', $data)) {
            $data['date_modified'] = 'NOW()';
        }

        if ($delayed) {
            $delayed = ' DELAYED ';
        } else {
            $delayed = '';
        }

        $fields = '';
        $values = '';

        foreach ($data as $field => $value) {
            $fields .= '`' . $field . '`, ';

            if ($value === 'NOW()') {
                $values .= $value . ', ';
            } else {
                $values .= "'" . ($value) . "', ";
            }

        }
        $fields = rtrim($fields, ', ');
        $values = rtrim($values, ', ');

        $sql = "INSERT {$delayed} INTO  `{$table}` ({$fields}) VALUES ({$values});";

        $query = $this->executeQuery($sql);
        echo "<div style='clear: both; padding: 10px; margin: 10px; border: 1px solid blue;'><pre><p>".__METHOD__. ":" .__LINE__."</p>";
        var_dump($query);
        echo "</pre></div>";
        //$this->lastInsertId = $this->_link->lastInsertId();
        return $this;
    }

    public function update($query, array $data) {
        $stmt = $this->executeQuery($query,$data);
        return $stmt->rowCount();
    }

    public function delete($query, array $data) {
        $stmt = $this->executeQuery($query,$data);
        return $stmt->rowCount();
    }

    public function findOne($query, array $data = null){
        $stmt = $this->executeQuery($query,$data);
        return $stmt->fetchObject();
    }

    public function findMany($query, array $data = null){
        $stmt = $this->executeQuery($query,$data);
        return($stmt->fetchAll(\PDO::FETCH_OBJ));
    }

    public function executeQuery($query, $data = null){
        $stmt = $this->connection->prepare($query);
        $stmt->execute($data);
        return $stmt;
    }
}
