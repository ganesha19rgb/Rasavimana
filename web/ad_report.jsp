<%-- 
    Document   : ad_report
    Created on : 19-Jun-2013, 11:04:21
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

        <title>Advertisement Report</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <link rel='stylesheet' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/themes/base/jquery-ui.css'>
        <!-- dataTables -->
        <link rel="stylesheet" href="css/plugins/datatable/TableTools.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
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
        <script src="js/jquery.mtz.monthpicker.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>
        <!-- Datepicker -->
        <script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
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

            .table.dataTable .sorting{
                padding-right: 30px;  
            }
            .table tr th{
                padding: 10px;
            }
            .num{
                text-align: right!important;
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
                            <h1>Advertise</h1>
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
                                <a href="#">Advertise</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Advertisement Report</a>
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
                                        Advertisement Report
                                    </h3>
                                </div>
                            </div>

                            <div class="row-fluid" style="margin-top: 15px;">                       
                                <div class="span4" style="padding-left: 1%;">
                                    <div class="row-fluid">
                                        <label for="textfield" class="control-label">Issue </label> 
                                    </div>
                                    <div class="row-fluid">
                                        <select name="mag_id" id="mag_id" class='select2-me input-xlarge'style="width: 220px;"  >
                                            <option value="">mag-001</option>
                                            <option value="">mag-002</option>
                                            <option value="">mag-003</option>
                                            <option value="">mag-004</option>
                                            <option value="">mag-005</option>
                                            <option value="">mag-006</option>                                                      
                                        </select>
                                        <%--
                                        <button class="btn btn-primary" style="height: 30px;">Search</button>
                                        --%>
                                    </div>
                                </div>
                                <div class="span4" style="padding-left: 1%;">
                                    <div class="row-fluid">
                                        <label for="textfield" class="control-label">Month</label> 
                                    </div>
                                    <div class="row-fluid">
                                        <input type="text" name="month" id="month" class="input-medium"  data-rule-required="true" style="width: 243px;">
                                        <button class="btn btn-primary" style="margin-top: -10px;">Search</button>
                                    </div>
                                </div>

                            </div> 


                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-table"></i>
                                        Details
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: auto!important;">
                                        <thead>
                                            <tr class='thefilter'>
                                                <th>In #</th>
                                                <th>Client</th>
                                                <th>Page</th>
                                                <th>Type</th>
                                                <th>Gross</th>
                                                <th >Com</th>
                                                <th>Med</th>   
                                                <th>NBT</th>
                                                <th>VAT</th>
                                                <th>Total</th>
                                                <th>Remarks</th>
                                            </tr>

                                            <tr>
                                                <th>In #</th>
                                                <th width="200">Client</th>
                                                <th>Page</th>
                                                <th width="300">Type</th>
                                                <th>Gross</th>
                                                <th>Com</th>
                                                <th>Med</th>   
                                                <th>NBT</th>
                                                <th>VAT</th>
                                                <th>Total</th>
                                                <th width="200">Remarks</th>                                          
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>241</td>
                                                <td>Maliban Biscuit</td>
                                                <td>2/3</td>
                                                <td>Full Page/ Branding</td>
                                                <td class="num">85000</td>
                                                <td class="num"></td>
                                                <td class="num">1000</td>
                                                <td class="num"></td>
                                                <td class="num">10200</td>
                                                <td class="num">92000</td>
                                                <td>Some Text</td>
                                            </tr>

                                            <tr>
                                                <td>241</td>
                                                <td>Maliban Biscuit</td>
                                                <td>2/3</td>
                                                <td>Full Page/ Branding</td>
                                                <td class="num">85000</td>
                                                <td class="num"></td>
                                                <td class="num">1000</td>
                                                <td class="num"></td>
                                                <td class="num">10200</td>
                                                <td class="num">92000</td>
                                                <td>Some Text</td>
                                            </tr>

                                            <tr>
                                                <td>241</td>
                                                <td>Maliban Biscuit</td>
                                                <td>2/3</td>
                                                <td>Full Page/ Branding</td>
                                                <td class="num">85000</td>
                                                <td class="num"></td>
                                                <td class="num">1000</td>
                                                <td class="num"></td>
                                                <td class="num">10200</td>
                                                <td class="num">92000</td>
                                                <td>Some Text</td>
                                            </tr>

                                            <tr>
                                                <td>241</td>
                                                <td>Maliban Biscuit</td>
                                                <td>2/3</td>
                                                <td>Full Page Branding</td>
                                                <td class="num">85000</td>
                                                <td class="num"></td>
                                                <td class="num">1000</td>
                                                <td class="num"></td>
                                                <td class="num">10200</td>
                                                <td class="num">92000</td>
                                                <td>Some Text</td>
                                            </tr>


                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="4"><strong>Totall</strong></td>
                                                <td class="num"><strong>85000</strong></td>
                                                <td class="num"><strong>0</strong></td>
                                                <td class="num"><strong>0</strong></td>
                                                <td class="num"><strong>0</strong></td>
                                                <td class="num"><strong>1200</strong></td>
                                                <td class="num"><strong>314505</strong></td>
                                                <td></td>
                                            </tr>
                                        </tfoot>

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

        <script>
            $('#month').monthpicker();
        </script>

    </body>
</html>

