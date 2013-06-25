function reg_user(path){
            
    $.ajax({
               
        type: "POST",
        url: path,
        data: $("#reg_user").serialize(),
        beforeSend:(function(){
//            $('#update').html("<div><img src=\"loading.gif\"></div>");
        }),
        statusCode:{
            404: function() {
//                $("#error").html('Could not contact server.');
            },
            500: function() {
//                $("#error").html('A server-side error has occurred.');
            }
            
        }
    }).done(function( msg ) {
        if(msg=='Error')   {
            alert(msg);
        }else{
            alert(msg);
        }
        
    });
}


