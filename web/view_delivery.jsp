<%-- 
    Document   : view_delivery
    Created on : 31-May-2013, 16:23:12
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

        <title>View Delivery</title>

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
        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
        <script src="js/plugins/datatable/TableTools.min.js"></script>
        <script src="js/plugins/datatable/ColReorder.min.js"></script>
        <script src="js/plugins/datatable/ColVis.min.js"></script>
        <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
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
            .has-bal{
                color: red;
            }
            .go-link{
                color: #333;
            }
            .go-link:hover{
                color: rgb(0, 86, 216);
                text-decoration: none;
            }
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
                            <h1>View Delivery</h1>
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
                                <a href="#">View Delivery</a>
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
                                        Delivery List
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: auto!important;">
                                        <thead>
                                            <tr class='thefilter'>
                                                <th width="100">Deliver ID</th>
                                                <th style="min-width: 170px;">Agent</th>
                                                <th width="100" class='hidden-350'>Date</th>
                                                <th width="100" class='hidden-480'>Magazine</th>
                                                <th width="100" class='hidden-1024'>Qty</th>
                                                <th width="100" class='hidden-1024'>Comm</th>
                                                <th width="100" class='hidden-1024'>Dis Price</th>
                                                <th width="100" class='hidden-480'>Amount</th>                                               
                                                <th width="80" class='hidden-480 upd'>Edit</th>
                                            </tr>
                                            <tr>
                                                <th>Deliver ID</th>
                                                <th>Agent</th>
                                                <th class='hidden-350'>Date</th>
                                                <th class='hidden-480'>Magazine</th>
                                                <th class='hidden-1024'>Qty</th>
                                                <th class='hidden-1024'>Comm</th>
                                                <th class='hidden-1024'>Dis Price</th>
                                                <th class='hidden-480'>Amount</th>                                               
                                                <th class='hidden-480 upd'>Edit</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>De-001</td>
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>05/03/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>44</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                               
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 

                                            </tr>
                                            <tr class="has-bal">
                                                <td>De-002</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-002 / Supun Bandara</a></td>
                                                <td class='hidden-350'>05/03/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-002 / Supun Bandara</a> </td>
                                                <td class='hidden-350'>06/03/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>40</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-004</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-003 / Supun Bandara</a></td>
                                                <td class='hidden-350'>07/03/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr class="has-bal">
                                                <td>De-005</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-006 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/03/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>44</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                                
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-006</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-004 / Supun Bandara</a></td>
                                                <td class='hidden-350'>05/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>50</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                               
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-007</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-003 / Supun Bandara</a></td>
                                                <td class='hidden-350'>06/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>21</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                               
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr class="has-bal">
                                                <td>De-008</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-004 / Supun Bandara</a></td>
                                                <td class='hidden-350'>07/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>30</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-009</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-006 / Supun Bandara</a></td>
                                                <td class='hidden-350'>07/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>22</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-010</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>77</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                                                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr class="has-bal">
                                                <td>De-011</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-005 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>56</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                                
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-012</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-004 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>20</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                               
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-013</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-003 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                            
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>

                                            <tr>
                                                <td>De-014</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-006 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>50</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                           
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-015</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>12</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                             
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr class="has-bal">
                                                <td>De-016</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td class='hidden-350'>10/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>50</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                             
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-017</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-004 / Supun Bandara</a></td>
                                                <td class='hidden-350'>11/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>100</td>
                                                <td class='hidden-1024'>20% </td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                         
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
                                            </tr>
                                            <tr>
                                                <td>De-018</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-003 / Supun Bandara</a></td>
                                                <td class='hidden-350'>11/04/2010</td>
                                                <td class='hidden-350'>Mag-001</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>1300</td>
                                                <td class='hidden-350'>44</td>
                                              
                                                <td class='upd'><a href="update_delivery.jsp"><i class="icon-edit icon-2x"></i></a></td> 
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
