<%-- 
    Document   : reg_route
    Created on : 13-Jun-2013, 10:11:29
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
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <title>Registration</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- dataTables -->
        <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">

        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">




        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>

        <!-- Nice Scroll -->
        <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- imagesLoaded -->
        <script src="js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>

        <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
        <script src="js/plugins/datatable/TableTools.min.js"></script>
        <script src="js/plugins/datatable/ColReorder.min.js"></script>
        <script src="js/plugins/datatable/ColVis.min.js"></script>
        <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
        <script src="js/plugins/datatable/dataTables.scroller.min.js"></script>

        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/form/jquery.form.min.js"></script>
        <!-- Validation -->
        <script src="js/plugins/validation/jquery.validate.min.js"></script>
        <script src="js/plugins/validation/additional-methods.min.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>


        <!-- Masked inputs -->
        <script src="js/plugins/maskedinput/jquery.maskedinput.min.js"></script>


        <script src="js/custom.js"></script>

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
        <style>
            .upd{
                text-align: center!important;
            }
            .upd a:hover{
                text-decoration: none;
                color: #368ee0;
            }
            .upd a{
                color: black;
            }
            .container-fluid{
                height: auto!important;
            }
        </style>

    </head>

    <body>


        <%@include file="include/navigation.jsp" %>
        <div class="container-fluid" id="content">
            <%@include file="include/left_panel.jsp" %>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>Registration</h1>
                        </div>
                        <%@include file="include/top_right.jsp" %>
                    </div>
                    <div class="breadcrumbs">
                        <ul>
                            <li>
                                <a href="home.jsp">Home</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="registration.jsp">Registration</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Route Registration</a>
                            </li>
                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-edit"></i>
                                        Route Registration
                                    </h3>
                                </div>
                                <div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert">x</button>
                                    <strong>Successful !  </strong>
                                    Record saved successfully.

                                </div>
                                <div class="span5">
                                    <div class="box-content">
                                        <form action="#" method="POST" class='form-horizontal form-validate' id="bb">

                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Route Name</label>
                                                <div class="controls">
                                                    <input type="text" name="dis_id" id="dis_id" class="input-medium" data-rule-required="true" data-rule-minlength="4">
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Route Code</label>
                                                <div class="controls">
                                                    <input type="text" name="name" id="agent_name" class="input-medium"  data-rule-required="true">
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <input type="submit" class="btn btn-primary" value="Submit">
                                                <button type="button" class="btn">Cancel</button>
                                            </div>

                                        </form>                                    
                                    </div>
                                </div>
                                <div class="span5">
                                    <div class="box box-color box-bordered">
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-table"></i>
                                                Route List
                                            </h3>
                                        </div>
                                        <div class="box-content nopadding">
                                            <table class="table table-hover table-nomargin  table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th width="150">Route</th>
                                                        <th width="100">Route Code</th>
                                                        <th width="70">Remove</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>
                                                    <tr>
                                                        <td>Keels</td>
                                                        <td>KL</td>
                                                        <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>                                                
                                                    </tr>

                                                </tbody>
                                            </table>
                                              
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                  
                </div>
            </div></div>
            <%@include file="include/footer.jsp" %>
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


    </body>

</html>
