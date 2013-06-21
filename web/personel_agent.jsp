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

        <title>Agent Account</title>

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
                                <a href="registration.jsp">View</a>
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
                            <div class="box">

                                <div class="box-title">
                                    <div class="span4">
                                        <h3 style="float: none;">
                                            <i class="icon-user"></i>
                                            Saman Kumara
                                        </h3>
                                        <div class="row-fluid">
                                            <div class="invoice-from" style="padding-left: 1%;">

                                                <span>ID : Agt-003</span><br/>
                                                <span>Routes : Gampaha</span><br/>
                                                <span>Phone : (071) 191 4913</span><br/>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="span8" style="text-align: right;">
                                        <h3 style="float: none;">
                                            <i class="icon-money icon-small"></i>
                                            Total Balance
                                        </h3>
                                        <div class="invoice-from" style="padding-left: 1%;">
                                            <strong>Rs. 20,000.00</strong>                                         

                                        </div>
                                    </div>
                                </div>


                                <div class="box box-color box-bordered ">
                                    <div class="box-title">
                                        <h3>
                                            <i class="icon-table"></i>
                                            Account History
                                        </h3>
                                    </div>
                                    <div class="box-content nopadding">
                                        <table class="table table-hover table-nomargin table-bordered dataTable dataTable-columnfilter" style="width: auto!important;">
                                            <thead>
                                                <tr class="thefilter">
                                                    <th>Date</th>
                                                    <th>Note No</th>                                                    
                                                    <th>Issue</th>
                                                    <th>In<span>/</span>Out</th>
                                                    <th>Total Balance Qty</th>
                                                    <th>Rate</th>
                                                    <th>Credit</th>       
                                                    <th>Debit</th> 
                                                    <th>Balance</th> 
                                                    <th>Remarks</th> 
                                                </tr>
                                                <tr><th>Date</th>
                                                    <th>Note No</th>                                                    
                                                    <th>Issue</th>
                                                    <th>In<span>/</span>Out</th>
                                                    <th>Total Balance Qty</th>
                                                    <th>Rate</th>
                                                    <th>Credit</th>       
                                                    <th>Debit</th> 
                                                    <th>Balance</th> 
                                                    <th>Remarks</th> 
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr> <td>01/05/2012</td>
                                                    <td>D001</td>
                                                    <td>08</td>
                                                    <td>100</td>
                                                    <td>100</td>
                                                    <td>160</td>
                                                    <td>16000</td>
                                                    <td>0</td>
                                                    <td>20000</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr><td>06/05/2012</td>
                                                    <td>D002</td>
                                                    <td>09</td>
                                                    <td>80</td>
                                                    <td>180</td>
                                                    <td>160</td>
                                                    <td>12800</td>
                                                    <td>0</td>
                                                    <td>28800</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr><td>06/05/2012</td>
                                                    <td>R001</td>
                                                    <td>08</td>
                                                    <td>34</td>
                                                    <td>146</td>
                                                    <td>160</td>
                                                    <td>0</td>
                                                    <td>5440</td>
                                                    <td>23560</td>
                                                    <td><span class="has-bal">O.P</span></td>
                                                </tr>
                                                <tr>
                                                    <td>08/05/2012</td>
                                                    <td>R002</td>
                                                    <td>08</td>
                                                    <td>66</td>
                                                    <td>80</td>
                                                    <td>160</td>
                                                    <td>0</td>
                                                    <td>10560</td>
                                                    <td>12800</td>
                                                    <td>-</td>
                                                </tr>
                                                <tr>
                                                    <td>16/04/2012</td>
                                                    <td>D003</td>
                                                    <td>10</td>
                                                    <td>60</td>
                                                    <td>146</td>
                                                    <td>160</td>
                                                    <td>0</td>
                                                    <td>5440</td>
                                                    <td>23560</td>
                                                    <td><span class="has-bal">S.O.P</span></td>
                                                </tr>

                                            </tbody>
                                        </table>
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
