<%-- 
    Document   : totalByMag
    Created on : 13-Jun-2013, 11:34:31
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

        <title>View Total </title>

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
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
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
       
        <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
        <!-- Chosen -->
        <script src="js/plugins/chosen/chosen.jquery.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>

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
            .op{
                color: red;
                padding-left: 10%;
                font-size: 10px;
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
                            <h1>Sales By Magazine</h1>
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
                                <a href="#">Sales By Magazine</a>
                            </li>
                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>

                    <div class="row-fluid" style="margin-top: 15px;">
                        <div class="span12">

                            <div class="control-group">
                                <label for="textfield" class="control-label">Magazine</label>
                                <div class="controls">
                                    <select name="district" id="district" class='select2-me input-medium' >
                                        <option value="01">01</option>
                                        <option value="02">11</option>
                                        <option value="03">12</option>
                                        <option value="04">13</option>
                                    </select>
                                    <button class="btn btn-primary" style="height: 30px;">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-table"></i>
                                        Details
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-hover table-nomargin table-bordered dataTable-columnfilter dataTable" style="width: auto!important;">
                                        <thead>
                                            <tr class='thefilter'>                                               
                                                <th style="min-width: 190px;">Agent</th>                                           
                                                <th  class='hidden-480'>Delivery</th>
                                                <th   class='hidden-1024'>Return</th>
                                                <th class='hidden-1024'>Total</th>
                                                <th  class='hidden-1024'>Comm</th>
                                                <th   class='hidden-480'>Value</th>
                                                <th class='hidden-480'>Paid</th>
                                                <th class='hidden-480 upd'>Balance</th>
                                                <th  class='hidden-480 upd'>B Qty</th>
                                            </tr>

                                            <tr>                                               
                                                <th>Agent</th>                                           
                                                <th  class='hidden-480'>Delivery</th>
                                                <th  class='hidden-1024'>Return</th>
                                                <th   class='hidden-1024'>Total</th>
                                                <th   class='hidden-1024'>Comm</th>
                                                <th   class='hidden-480'>Value</th>
                                                <th  class='hidden-480'>Paid</th>
                                                <th  class='hidden-480 upd'>Balance</th>
                                                <th   class='hidden-480 upd'>B Qty</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Abt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>33</td>
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-1024'>10%</td>
                                                <td class='hidden-1024'>5200</td>
                                                <td class='hidden-350'>6000 <span class="op">O.P</span></td>
                                                <td class='hidden-350'>1100</td>
                                                <td class='hidden-350'>0</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1-</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>2</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000<span class="op">O.P</span></td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>0</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>3</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>0</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>0</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>0</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>

                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
                                            </tr>
                                            <tr>                                              
                                                <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                <td class='hidden-350'>55</td>
                                                <td class='hidden-350'>10</td>
                                                <td class='hidden-350'>45</td>
                                                <td class='hidden-1024'>20%</td>
                                                <td class='hidden-1024'>7200</td>
                                                <td class='hidden-350'>5000</td>
                                                <td class='hidden-350'>1200</td>
                                                <td class='hidden-350'>1+</td>
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