<%-- 
    Document   : view_agent
    Created on : 30-May-2013, 09:21:52
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

        <title>View Agent</title>

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
          <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
        
        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Bootbox -->
        <script src="js/plugins/bootbox/jquery.bootbox.js"></script>
        <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
       
        
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
                           <h1>View</h1>

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
                                 <a href="view.jsp">View</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Agent List</a>
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
                                        Agent List
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: auto!important;">
                                      
                                    <thead>
                                            <tr class='thefilter'>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th class='hidden-350'>Date</th>
                                                <th class='hidden-1024'>Dis ID</th>
                                                <th class='hidden-480'>Routes</th>
                                                <th class='hidden-480'>Phone</th>
                                                <th class='hidden-480'>Address</th>
                                                <th class='hidden-480'>Com</th>
                                                <th class='hidden-480'>VAT</th>
                                                <th class='hidden-480'>Remarks</th>
                                                <th class='hidden-480'>Edit</th>
                                            </tr>
                                              <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th class='hidden-350'>Date</th>
                                                <th class='hidden-1024'>Dis ID</th>
                                                <th class='hidden-480'>Routes</th>
                                                <th class='hidden-480'>Phone</th>
                                                <th class='hidden-480'>Address</th>
                                                <th class='hidden-480'>Com</th>
                                                <th class='hidden-480'>VAT</th>
                                                <th class='hidden-480'>Remarks</th>
                                                <th class='hidden-480'>Edit</th>
                                            </tr>
                                            
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>A-001</td>
                                                <td>Saman Kumara</td>
                                                <td class='hidden-350'>05/03/2010</td>
                                                <td class='hidden-350'>DI-003</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>Pay on time</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>   
                                            </tr>
                                            <tr>
                                                <td>A-002</td>
                                                <td>Nimal</td>
                                                <td class='hidden-350'>05/03/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                               <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-003</td>
                                                <td>Gayan </td>
                                                <td class='hidden-350'>06/03/2010</td>
                                                <td class='hidden-350'>DI-003</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                               <td class='hidden-480'>Pay on time</td>
                                                <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-004</td>
                                                <td>Nihal</td>
                                                <td class='hidden-350'>07/03/2010</td>
                                                <td class='hidden-350'>DI-004</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                               <td class='hidden-480'>Pay on time</td>
                                                <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-005</td>
                                                <td>Padmasiri</td>
                                                <td class='hidden-350'>08/03/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                               <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>-</td> 
                                                <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                                
                                            </tr>
                                            <tr>
                                                <td>A-006</td>
                                                <td>Laxman</td>
                                                <td class='hidden-350'>05/04/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                               <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-007</td>
                                                <td>Jayawardhana</td>
                                                <td class='hidden-350'>06/04/2010</td>
                                                <td class='hidden-350'>DI-002</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                               <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-008</td>
                                                <td>Gimhana</td>
                                                <td class='hidden-350'>07/04/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                              <td class='hidden-480'>Pay on time</td>
                                               <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-009</td>
                                                <td>Priyanka</td>
                                                <td class='hidden-350'>07/04/2010</td>
                                                <td class='hidden-350'>DI-002</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-010</td>
                                                <td>Nadeesha</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-011</td>
                                                <td>Mahendra</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>Pay on time</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-012</td>
                                                <td>Suneetha</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                               <td class='hidden-480'>Pay on time</td>
                                                <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-013</td>
                                                <td>Ravindra</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>

                                            <tr>
                                                <td>A-014</td>
                                                <td>Saman Kumara</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-015</td>
                                                <td>Gimhana</td>
                                                <td class='hidden-350'>08/04/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>Y</td>
                                               <td class='hidden-480'>Pay on time</td>
                                                <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-016</td>
                                                <td>Kanishka</td>
                                                <td class='hidden-350'>10/04/2010</td>
                                                <td class='hidden-350'>DI-005</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>Yes</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
                                            </tr>
                                            <tr>
                                                <td>A-017</td>
                                                <td>Sumedha</td>
                                                <td class='hidden-350'>11/04/2010</td>
                                                <td class='hidden-350'>DI-001</td>
                                                <td class='hidden-1024'>Anuradhapura Rd</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>Ranaviru mawatha, Anuradhapura</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>Pay on time</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  

                                            </tr>
                                            <tr>
                                                <td>A-018</td>
                                                <td>Pushpakumara</td>
                                                <td class='hidden-350'>11/04/2010</td>
                                                <td class='hidden-350'>DI-006</td>
                                                <td class='hidden-1024'>Kaluthara</td>
                                                <td class='hidden-480'>0711 914913</td>
                                                <td class='hidden-480'>1st Lane, Colombo</td>
                                                <td class='hidden-480'>10.50%</td>
                                                <td class='hidden-480'>No</td>
                                                <td class='hidden-480'>-</td>
                                                 <td class='upd'><a href="update_agent.jsp"><i class="icon-edit icon-2x"></i></a></td>  
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