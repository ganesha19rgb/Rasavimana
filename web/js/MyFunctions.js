function pall(){
            
    $.ajax({
               
        type: "POST",
        url: "login",
        data: $("#myform").serialize(),
        beforeSend:(function(){
            $('#update').html("<div><img src=\"loading.gif\"></div>");
        }),
        statusCode:{
            404: function() {
                $("#error").html('Could not contact server.');
            },
            500: function() {
                $("#error").html('A server-side error has occurred.');
            }
            
        }
    }).done(function( msg ) {
        if(msg=='java.lang.Exception'){
            $("#error").html(msg+"<br>");
        }else{
            $("#update").html(msg+"<br>");
        }          
    });
}


