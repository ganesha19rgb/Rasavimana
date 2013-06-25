<%-- 
    Document   : index
    Created on : 28-May-2013, 10:30:44
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent"/>

        <title>Rasavimana</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- icheck -->
        <link rel="stylesheet" href="css/plugins/icheck/all.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">


        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <!-- Nice Scroll -->
        <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- Validation -->
        <script src="js/plugins/validation/jquery.validate.min.js"></script>
        <script src="js/plugins/validation/additional-methods.min.js"></script>
        <!-- icheck -->
        <script src="js/plugins/icheck/jquery.icheck.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/eakroko.js"></script>

        <!--[if lte IE 9]>
                <script src="js/plugins/placeholder/jquery.placeholder.min.js"></script>
                <script>
                        $(document).ready(function() {
                                $('input, textarea').placeholder();
                        });
                </script>
        <![endif]-->


        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon.ico" />
        <!-- Apple devices Homescreen icon -->
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png" />
        <script src="js/jquery.min.js"></script>
        <style>
            .control-group.error .help-block{
                color: #b94a48;
            }
            .help-block{
                display: none;
            }


        </style>

    </head>

    <body class='login'>
        <div class="wrapper">
            <h1><a href="#a"><img src="img/logo-big.png" alt="" class='retina-ready' width="59" height="49">Rasavimana</a></h1>
            <div class="login-body">
                <h2>SIGN IN</h2>
                <form id="signin" class='form-validate' >
                    <div class="control-group">
                        <div class="email controls">
                            <input type="text" name='uname' placeholder="User Name" class='input-block-level' data-rule-required="true" >
                            <span for="uname" class="help-block error" style="">This field is required.</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="pw controls">
                            <input type="password" name="upw" placeholder="Password" class='input-block-level' data-rule-required="true">
                            <span for="pw" class="help-block error" style="">This field is required.</span>
                        </div>
                    </div>

                    <div class="submit">					
                        <input type="button" value="Sign me in" onclick="validate('login');" class='btn btn-primary'>
                    </div>
                </form>
                <div class="forget">
                    <a href="#a"><span>Forgot password?</span></a>
                </div>
            </div>
        </div>


        <script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-38620714-4']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
            })();

        </script>

        <script>
            function validate(path){
                var email= $('.email input').val();
                var pw= $('.pw input').val();
              
                if(email==""){
                    $('.form-validate .control-group:first').addClass('error');
                    $('.email .error').css({
                        display:'block' 
                    });
                }else{
                    $('.form-validate .control-group:first').removeClass('error');
                    $('.email .error').css({
                        display:'none' 
                    }); 
                }
                
                if(pw==""){
                    $('.form-validate .control-group:last').addClass('error');
                    $('.pw .error').css({
                        display:'block' 
                    });
                }else{
                    $('.form-validate .control-group:last').removeClass('error');
                    $('.pw .error').css({
                        display:'none' 
                    }); 
                }
                if((email!="")&&(pw!="")){
                    //window.location="home.jsp";
                    $.ajax({
               
                        type: "POST",
                        url: path,
                        data: $("#signin").serialize(),
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
                        alert(msg);
        
                    });
                }
               
            }
        </script>

    </body>

</html>

