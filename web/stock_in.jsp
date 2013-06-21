<%-- 
    Document   : stock_in
    Created on : 19-Jun-2013, 15:26:22
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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

        <title>Stock In </title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">

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
            .upd i:hover{
                text-decoration: none;
                color: #368ee0;
                cursor: pointer;
            }
            .upd i{
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
        <%
            DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            df.setTimeZone(TimeZone.getTimeZone("Asia/Colombo"));
            Date date = new Date();
            String fdate = df.format(date);
        %>


        <%@include file="include/navigation.jsp" %>
        <div class="container-fluid" id="content">
            <%@include file="include/left_panel.jsp" %>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>Stock</h1>
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
                                <a href="#">Stock</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Stock In</a>
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
                                        Stock In
                                    </h3>
                                </div>
                            </div>

                            <div class="row-fluid" style="margin-top: 15px;">  
                                <div class="span6">
                                    <div class="span6" style="padding-left: 1%;">
                                        <div class="row-fluid">
                                            <label for="textfield" class="control-label">Route </label> 
                                        </div>
                                        <div class="row-fluid">
                                            <select name="routes" id="routes" class='select2-me input-xlarge' style="width: 160px;" >
                                                <option value="01">1. Keels</option>
                                                <option value="02">2. Arpico</option>
                                                <option value="03">3. Cargills</option>
                                                <option value="04">4. Laugfs</option>
                                                <option value="05">5. Galle Road</option>
                                                <option value="06">7. Negambo Road</option>                                                      
                                            </select>
                                            <%--
                                            <button class="btn btn-primary" style="height: 30px;">Search</button>
                                            --%>
                                        </div>
                                    </div>
                                    <div class="span6" style="padding-left: 1%;">
                                        <div class="row-fluid">
                                            <label for="textfield" class="control-label">Issue </label> 
                                        </div>
                                        <div class="row-fluid">
                                            <select name="mag_id" id="mag_id" class='select2-me input-medium'style="width: 160px;"  >
                                                <option value="">mag-001</option>
                                                <option value="">mag-002</option>
                                                <option value="">mag-003</option>
                                                <option value="">mag-004</option>
                                                <option value="">mag-005</option>
                                                <option value="">mag-006</option>                                                      
                                            </select>
                                            <button class="btn btn-primary" style="float: right;">Calculate</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="span6">
                                    <div class="box box-color">
                                        <ul class="tiles" style="float: right;margin: 0px;">                                            
                                            <li class="green">                                               
                                                <a href="#"><span>5227</span><span class='name'>Ordered</span></a>
                                            </li>
                                            <li class="blue">                                               
                                                <a href="#"><span>3200</span><span class='name'>Received</span></a>
                                            </li>
                                            <li class="red">                                               
                                                <a href="#"><span>1325</span><span class='name'>Pending</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>


                            </div>
                            <div class="row-fluid">
                                <div class="span2" style="padding-left: 1%;">
                                    <div class="row-fluid">
                                        <label for="textfield" class="control-label">Date</label> 
                                    </div>
                                    <div class="row-fluid">
                                        <input type="text"  name="ag_reg_date" id="ag_reg_date" value="<%=fdate%>" class="input-small datepick"> 
                                        <%--
                                        <button class="btn btn-primary" style="margin-top: -10px;">Search</button>
                                        --%>                                   
                                    </div>
                                </div>

                                <div class="span2" style="padding-left: 1%;">
                                    <div class="row-fluid">
                                        <label for="textfield" class="control-label">Deliver ID</label> 
                                    </div>
                                    <div class="row-fluid">
                                        <select name="deli_id" id="deli_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                            <option value="">De-001</option>
                                            <option value="">De-002</option>
                                            <option value="">De-003</option>
                                            <option value="">De-004</option>
                                            <option value="">De-005</option>
                                            <option value="">De-006</option>                                                      
                                        </select>                                 
                                    </div>
                                </div>

                                <div class="span2" style="padding-left: 1%;">
                                    <div class="row-fluid">
                                        <label for="textfield" class="control-label">QTY</label> 
                                    </div>
                                    <div class="row-fluid">
                                        <input type="text" name="deli_qty" id="deli_qty" onkeyup="grabFocus(event,this.id,'deli_id');digitValidate(this.id);" class="input-small modify-input" data-rule-required="true" data-rule-digits="true">
                                        <%--
                                        <button class="btn btn-primary" style="margin-top: -10px;">Search</button>
                                        --%>                                   
                                    </div>
                                </div>
                            </div>


                            <div class="row-fluid">
                                <div class="span6">
                                    <div class="box box-color box-bordered">
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-table"></i>
                                                Delivery Records
                                            </h3>
                                        </div>
                                        <div class="box-content nopadding">
                                            <table class="table table-hover table-nomargin">
                                                <thead>
                                                    <tr>
                                                        <th>Deliver Id</th>
                                                        <th>Magazine</th>                                                                                                                
                                                        <th>QTY</th>                                                    
                                                        <th class='upd'>Remove</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>2541</td>
                                                        <td>25</td>
                                                        <td>105</td>
                                                        <td class='upd'><i class="icon-remove icon-2x"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2541</td>
                                                        <td>25</td>
                                                        <td>105</td>
                                                        <td class='upd'><i class="icon-remove icon-2x"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2541</td>
                                                        <td>25</td>
                                                        <td>105</td>
                                                        <td class='upd'><i class="icon-remove icon-2x"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2541</td>
                                                        <td>25</td>
                                                        <td>105</td>
                                                        <td class='upd'><i class="icon-remove icon-2x"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>2541</td>
                                                        <td>25</td>
                                                        <td>105</td>
                                                        <td class='upd'><i class="icon-remove icon-2x"></i></td>
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

        <script>
            
            function grabFocus(e,Tid,Nid){
                var key=e.keyCode || e.which;
                if (key==13){
                    $('#'+Tid).val(0);
                    $('#'+Nid).focus();               
                }
            }
        </script>

    </body>
</html>
