/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function digitValidate(id){
    id='#'+id;
    var num=$(id).val(); 
    for(var i=0; i<=num.length; i++){
        var fullNum=num.substr(0,i);        
        if(isNaN(fullNum)){
            $(id).val($(id).val().substr(0, i-1));
        }else{
            if(fullNum.indexOf('.')!=-1){         
                $(id).val($(id).val().substr(0, i-1)); 
            } 
          
        }
    }
 

}


$('#updsub_qty input').live('keyup',function(){       
        digitValidate('#updsub_qty');
        $('#updsub_amount').val("");
    });
