$(function() {
    $('#selectReport').change(function() {
        $.ajax({
            url: 'index.php',
            data: { choice: $('#selectReport :selected').val()},
            success: function(data, textStatus, jqXHR){
                $('#reports').empty();
                $('#reports').append(String(data));
                $('#reports').tablesorter();
            },
            dataType: 'html'
        });
    }); // change
}); // ready
