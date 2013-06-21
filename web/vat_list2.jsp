<%-- 
    Document   : vat_list
    Created on : 08-Jun-2013, 10:44:04
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

        <title>VAT</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
        <!-- dataTables -->
        <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">
        <!-- chosen -->
        <link rel="stylesheet" href="css/plugins/chosen/chosen.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">
        <!-- Datepicker -->
        <link rel="stylesheet" href="css/plugins/datepicker/datepicker.css">

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

        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
        <!-- Datepicker -->
        <script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>


        <!-- Chosen -->
        <script src="js/plugins/chosen/chosen.jquery.min.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>

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
                            <h1>VAT Report By Months</h1>

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
                                <a href="report.jsp">Reports</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">VAT Report By Months</a>
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
                                        VAT Report By Months
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box">
                                <div class="span2">
                                    <div class="control-group" style="margin-top: 15px;">
                                        <label for="textfield" class="control-label">From</label>
                                        <div class="controls">
                                            <input type="text"  name="from_date" id="from_date"  class="input-small datepick">                                             
                                        </div>
                                    </div>
                                </div>
                                <div class="span4">
                                    <div class="control-group" style="margin-top: 15px;">
                                        <label for="textfield" class="control-label">To</label>
                                        <div class="controls">
                                            <input type="text"  name="to_date" id="to_date"  class="input-small datepick">  
                                            <button class="btn btn-primary" style="margin-top: -9px;">Search</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid"></div>
                                <div class="control-group">
                                    <label for="textfield" class="control-label"><strong>Summary</strong></label>
                                    <div class="controls">
                                        <div class="row-fluid span8">
                                            <div class="box-content nopadding">
                                                <table class="table  table-nomargin table-condensed" style="border: 1px solid rgb(233, 233, 233);">
                                                    <thead>
                                                        <tr>
                                                            <th>QTY</th>
                                                            <th>Value</th>
                                                            <th class='hidden-350'>NBT</th>
                                                            <th class='hidden-1024'>VAT</th>   
                                                            <th class='hidden-1024'>Total Value</th>   
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td><strong>1500</strong> </td>
                                                            <td><strong>158.55</strong> </td>
                                                            <td><strong>920.32</strong> </td>
                                                            <td><strong>8640</strong> </td>
                                                            <td><strong>3640</strong> </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div> 
                                        </div>                                            
                                    </div>
                                </div>
                                <div class="row-fluid"></div>

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