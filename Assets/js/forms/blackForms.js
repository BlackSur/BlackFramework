$( document ).ready(function() {

    var $blackForm = $("form[data-form='blackForm']");

    var $selectFires = $blackForm.find('select[data-fires]').each(function( index ) {
        var $this = $(this);
        fireFunctions($this);

        $this.change(function() {
            console.log($this.val());
            fireFunctions($this);

        });

    });

});



function fireFunctions(element) {
    $('.onTheFly').remove();
    $.each(element.data('fires'), function(key, value) {
        if (key === element.val()) {
            var func = eval(value);
            if($.isFunction(func)) {
                func(element);
            }
        }

    });
}
function getAllGalleries(element) {
    var xhr = $.ajax({
      url: '/admin/ajax/gets/gallery',
      data: {algo: "algoooo"},
      dataType: 'json'
    })
    .done(function(data ) {
        console.log(data);
        var combo = createDropDownList(data);
        //element.parent().append(combo);
    });
}


function createDropDownList(optionList) {

    var $combo = $("select[name='parameters']");
    selectedOption = $combo.val();
    console.log(selectedOption);

    $combo.empty();

    $.each(optionList, function (i, el) {
        var selected = '';
        if (i === selectedOption) {
            selected = 'selected="selected"';
        }
        $combo.append("<option " + selected + " value='" + i + "'>" + el + "</option>");
    });


}
