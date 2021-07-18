$(document).ready(function() {

    var search = $("#s");
    var items = $(".fbbox");

    $("#search").on("click", function(e) {

        var v = search.val().toLowerCase();
        if (v == "") {
            items.show();
            return ;
        }
        $.each(items, function() {
            var it = $(this);
            var lb = it.find("label").text().toLowerCase();
            console.log(lb + " --- " + v);
            if (lb.indexOf(v) == -1) {
                it.hide();
            } else {
                it.show();
            }
        });
    });
});