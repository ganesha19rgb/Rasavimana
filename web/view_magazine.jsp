<%-- 
    Document   : view_magazine
    Created on : 06-Jun-2013, 15:49:19
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

        <title>Magazine Cost</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- dataTables -->
        <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">
        <!-- chosen -->
        <link rel="stylesheet" href="css/plugins/chosen/chosen.css">
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
        <script src="js/plugins/datatable/FixedColumns.min.js"></script>
        <script src="js/plugins/datatable/dataTables.scroller.min.js"></script>
          <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>

        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
       
        
        


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
                            <h1>Magazine Cost Breakdown</h1>

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
                                <a href="#">Magazine</a>
                            </li>
                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-table"></i>
                                        Magazine Expenses
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-hover table-nomargin dataTable  table-bordered dataTable-columnfilter" style="width: auto!important;">
                                        <thead>
                                            <tr class='thefilter'>
                                                <th>Magazine</th>
                                                <th>Month/Year</th>
                                                <th class='hidden-350'>Selling Price</th>                                              
                                                <th class='hidden-480'>Qty</th>                                        
                                                <th class='hidden-480 upd'>Total Cost</th>
                                                <th class='hidden-480 upd'>Per Mag Cost</th>
                                                <th class='hidden-480 upd'>Remarks</th>
                                                <th class='hidden-480 upd'>Edit</th>
                                            </tr>
                                             <tr>
                                                <th>Magazine</th>
                                                <th>Month/Year</th>
                                                <th>Selling Price</th>                                              
                                                <th>Qty</th>                                        
                                                <th>Total Cost</th>
                                                <th>Per Mag Cost</th>
                                                <th>Remarks</th>
                                                <th>Edit</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Mag-009</td>
                                                <td>Jan/2010</td>
                                                <td class='hidden-480'>200</td>
                                                <td class='hidden-480'>8500</td>
                                                <td class='hidden-480'>900000<a href="other_expence.jsp" target="_blank" style="padding-left: 7%;font-size: 11px;">View</a></td>
                                                <td class='hidden-480'>105</td>
                                                <td class='hidden-480'>Got more Profit</td>
                                                <td class='upd'><a href="update_mag.jsp"><i class="icon-edit icon-2x"></i></a></td>                                                            
                                            </tr>

                                            <tr>
                                                <td>Mag-009</td>
                                                <td>Jan/2010</td>
                                                <td class='hidden-480'>200</td>
                                                <td class='hidden-480'>8500</td>
                                                <td class='hidden-480'>900000<a href="other_expence.jsp" target="_blank" style="padding-left: 7%;font-size: 11px;">View</a></td>
                                                <td class='hidden-480'>105</td>
                                                <td class='hidden-480'>Got more Profit</td>
                                                <td class='upd'><a href="update_mag.jsp"><i class="icon-edit icon-2x"></i></a></td>                                                             
                                            </tr>
                                            <tr>
                                                <td>Mag-009</td>
                                                <td>Jan/2010</td>
                                                <td class='hidden-480'>200</td>
                                                <td class='hidden-480'>8500</td>
                                                <td class='hidden-480'>900000<a href="other_expence.jsp" target="_blank" style="padding-left: 7%;font-size: 11px;">View</a></td>
                                                <td class='hidden-480'>105</td>
                                                <td class='hidden-480'>Got more Profit</td>
                                                <td class='upd'><a href="update_mag.jsp"><i class="icon-edit icon-2x"></i></a></td>                                                              
                                            </tr>
                                            <tr>
                                                <td>Mag-009</td>
                                                <td>Jan/2010</td>
                                                <td class='hidden-480'>200</td>
                                                <td class='hidden-480'>8500</td>
                                                <td class='hidden-480'>900000<a href="other_expence.jsp" target="_blank" style="padding-left: 7%;font-size: 11px;">View</a></td>
                                                <td class='hidden-480'>25</td>
                                                <td class='hidden-480'>Got more Profit</td>
                                                <td class='upd'><a href="update_mag.jsp"><i class="icon-edit icon-2x"></i></a></td>                                                            
                                            </tr>


                                        </tbody>
                                    </table>
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
