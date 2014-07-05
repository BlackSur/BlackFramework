$( document ).ready(function() {

$("a[aria-action='delete']").each(function(i, obj) {

});

$("a[aria-action='delete']").click(function(event) {
    var $this = $(this);
    //event.preventDefault();
    if (confirm("Are you sure you want to delete this record?.") == true) {
        x = "You pressed OK!";
        return true;
    } else {
        x = "You pressed Cancel!";
        return false;
    }
});


});
