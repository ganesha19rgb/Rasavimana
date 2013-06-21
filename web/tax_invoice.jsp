<%-- 
    Document   : tax_invoice
    Created on : 14-Jun-2013, 16:21:39
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

        <title>Tax Invoice</title>

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
                                <a href="#">Tax Invoice</a>
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
                            <div class="offset8 span3" style="float: right;margin-top: 16px;" >
                                <div class="control-group">
                                    <label for="textfield" class="control-label" style="float: left;padding-right: 7%;">VAT Regd No :</label>
                                    <abbr title="VAT Regd No">11475850-700</abbr>                                  
                                </div>
                                <div class="control-group">
                                    <label for="textfield" class="control-label" style="float: left;padding-right: 6.5%;">NBT Regd No :</label>
                                    <abbr title="NBT Regd No :">11475850-700</abbr>                                  
                                </div>
                                <div class="control-group">
                                    <label for="textfield" class="control-label" style="float: left;padding-right: 12.5%;">Invoice No :</label>
                                    <abbr title="Invoice No :">20401</abbr>                                  
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div class="offset4 span4" style="text-align: center;border: 1px solid rgb(46, 140, 184);">
                                    <h3>Tax Invoice</h3>
                                </div>
                            </div>
                            <div class="row-fluid">
                                <div  class="offset1 span10">
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 8.3%;">Date :</label>
                                        <abbr title="Date">13/01/2013</abbr>                                  
                                    </div>
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 3%;">Client Name :</label>
                                        <abbr title="Client Name">Harischandra</abbr>                                  
                                    </div>
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 1.8%;">Client Address :</label>
                                        <abbr title="Client Address">207, Kandy Rd, Colombo 11.</abbr>                                  
                                    </div>
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 2.1%;">Client VAT No :</label>
                                        <abbr title="VAT No">11475850-700</abbr>                                  
                                    </div>
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 2.1%;">Agency Name :</label>
                                        <abbr title="Agency Name">Harischandra PVT LTD</abbr>                                  
                                    </div>
                                    <div class="control-group">
                                        <label for="textfield" class="control-label" style="float: left;padding-right: 1%;">Agency Address :</label>
                                        <abbr title="Agency Address">207, Kandy Rd, Colombo 11.</abbr>                                  
                                    </div>


                                    <div class="row-fluid span10" style="margin-top: 35px;padding-left: 7%;">
                                        <div class="control-group">
                                            <label for="textfield" class="control-label" style="margin-bottom: 20px;"><strong>Advertisement Description</strong></label>

                                            <div class="row-fluid">
                                                <div class="span4">
                                                    <label for="textfield" class="control-label" style="float: left;padding-right: 5%;">Issue :</label>
                                                    <input type="text" name="magid" id="magid" class="input-small" >
                                                </div>
                                                <div class="span4">
                                                    <label for="textfield" class="control-label" style="float: left;padding-right: 5%;">Month :</label>
                                                    <input type="text" name="magid" id="magid" class="input-small" >
                                                </div>
                                                <div class="span4">
                                                    <label for="textfield" class="control-label" style="float: left;padding-right: 5%;">Page No :</label>
                                                    <input type="text" name="magid" id="magid" class="input-small" >
                                                </div>
                                            </div>

                                            <div class="row-fluid" style="margin-top: 20px;">
                                                <table>
                                                    <tr>
                                                        <td width="95">About Ad</td> 
                                                        <td><input type="text" name="abt_ad" id="abt_ad" class="input-xlarge"  ></td> 
                                                    </tr>
                                                    <tr>
                                                        <td width="95">Product</td> 
                                                        <td> <input type="text" name="product" id="product" class="input-xlarge"  ></td> 
                                                    </tr>
                                                </table>

                                            </div>
                                            <div class="row-fluid span7" style="width: 59.264957%; margin-left: 0;">
                                                <div class="box-content nopadding">
                                                    <table class="table table-bordered table-nomargin" style="border-top: 1px solid #ddd;">

                                                        <tbody>
                                                            <tr>
                                                                <td class='hidden-1024'>Gross Amount</td>
                                                                <td class='hidden-480' style="text-align: right;">100,000</td>
                                                            </tr>
                                                            <tr>

                                                                <td class='hidden-1024'>Agent Commission</td>
                                                                <td class='hidden-480'style="text-align: right;">15000</td>
                                                            </tr>
                                                            <tr>

                                                                <td class='hidden-1024'>Media Cost</td>
                                                                <td class='hidden-480'style="text-align: right;">8500</td>
                                                            </tr>
                                                            <tr>

                                                                <td class='hidden-1024'>NBT 2%</td>
                                                                <td class='hidden-480'style="text-align: right;">1700</td>
                                                            </tr>
                                                            <tr>

                                                                <td class='hidden-1024'>VAT 12%</td>
                                                                <td class='hidden-480'style="text-align: right;">10404</td>
                                                            </tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <td><strong>Total Amount</strong></td>
                                                                <td style="text-align: right;"><strong>97104</strong></td>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>



                                        </div>
                                    </div>

                                    <div class="row-fluid" style="clear: both;">
                                        <div class="span6">
                                            <label for="textfield" class="control-label" style="float: left;padding-right: 1%;">Prepared By :</label>
                                            <abbr title="Date">Kasun Dasanayake</abbr>                                  
                                        </div>
                                        <div class="span4" style="float: right;">
                                            <label for="textfield" class="control-label" style="float: left;padding-right: 1%;">Accounted By :</label>
                                            <abbr title="Date">Kasun Dasanayake</abbr>                                  
                                        </div>
                                    </div>
                                    
                                    <div class="row-fluid" style="border-top: 1px solid rgb(0, 0, 0);text-align: center;">
                                        <span>Please issue account payee cheque in favour of 'Rasavimana Publications (Pvt) Ltd'</span>
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
