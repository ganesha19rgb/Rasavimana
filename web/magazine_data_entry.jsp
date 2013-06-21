<%-- 
    Document   : magazine_data_entry
    Created on : 30-May-2013, 17:55:18
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

        <title>Magazine Data</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
        <!-- Datepicker -->
        <link rel="stylesheet" href="css/plugins/datepicker/datepicker.css">

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
        <!-- Bootbox -->
        <script src="js/plugins/form/jquery.form.min.js"></script>
        <!-- Validation -->
        <script src="js/plugins/validation/jquery.validate.min.js"></script>
        <script src="js/plugins/validation/additional-methods.min.js"></script>
        <!-- Datepicker -->
        <script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>


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
            .row-fluid .span3{
                width: 25.076923%;
            }
            .option-sel{
                margin-bottom: 40px;
            }
            .modify-input{
                margin-bottom: 0px!important;
                height: 18px!important;
            }
            .name-input{
                cursor: pointer!important;
            }
            .btn-danger{
                height: 25px;
            }
            .btn{
                line-height: 4px;
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
                            <h1>Magazine Data Entry</h1>
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
                                <a href="magazine.jsp">Magazine</a> 
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Magazine Data</a> 

                            </li>

                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box">

                                <div class="box-content">
                                    <div class="option-sel row-fluid">                                        
                                        <div class="span3" style="margin-left: 0;">
                                            <div class="row-fluid">
                                                <label for="textfield" class="control-label">Route</label> 
                                            </div>
                                            <div class="row-fluid">
                                                <select name="routes" id="routes" class='select2-me input-xlarge' style="width: 220px;" >
                                                    <option value="01">1. Keels</option>
                                                    <option value="02">2. Arpico</option>
                                                    <option value="03">3. Cargills</option>
                                                    <option value="04">4. Laugfs</option>
                                                    <option value="05">5. Galle Road</option>
                                                    <option value="06">7. Negambo Road</option>                                                      
                                                </select>  
                                            </div>
                                        </div>

                                        <div class="span3">
                                            <div class="row-fluid">
                                                <label for="textfield" class="control-label">Option</label>
                                            </div>
                                            <div class="row-fluid">
                                                <select name="option" id="option" onchange="chan();">
                                                    <option value="1">Delivery</option>
                                                    <option value="2">Return</option>
                                                    <option value="3">Invoice</option>                                                                                                         
                                                </select>  
                                            </div>
                                        </div>



                                        <div class="span3">
                                            <div class="row-fluid">
                                                <label for="textfield" class="control-label">Date</label>
                                            </div>
                                            <div class="row-fluid">
                                                <input type="text"  name="date" id="date" value="<%=fdate%>" class="input-medium datepick">                                               

                                            </div>
                                        </div>
                                    </div>

                                    <%-- start destri --%>

                                    <div class="row-fluid" id="distri">
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Delivery
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="box-content nopadding">
                                                <table class="table table-hover table-nomargin table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>Deliver No</th>
                                                            <th>Agent Id</th>
                                                            <th width="350">Agent Name</th>                                                            
                                                            <th>Magazine</th>  
                                                            <th>Qty</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr> 
                                                            <td>
                                                                <select name="deli_id" id="deli_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">De-001</option>
                                                                    <option value="">De-002</option>
                                                                    <option value="">De-003</option>
                                                                    <option value="">De-004</option>
                                                                    <option value="">De-005</option>
                                                                    <option value="">De-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <select name="agt_dis_id" id="agt_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">Agt-001</option>
                                                                    <option value="">Agt-002</option>
                                                                    <option value="">Agt-003</option>
                                                                    <option value="">Agt-004</option>
                                                                    <option value="">Agt-005</option>
                                                                    <option value="">Agt-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td><input type="text" name="agt_name" id="agt_name" style="width: 285px;" class="input-medium name-input modify-input" data-rule-required="true" disabled="" ></td>

                                                            <td>
                                                                <select name="deli_mag" id="deli_mag" class='select2-me input-xlarge'  style="width: 100px;"  >
                                                                    <option value="">01</option>
                                                                    <option value="">02</option>
                                                                    <option value="">03</option>
                                                                    <option value="">04</option>
                                                                    <option value="">05</option>
                                                                    <option value="">06</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td class='hidden-1024'><input type="text" name="deli_qty" id="deli_qty" onkeyup="grabFocus(event,this.id,'deli_mag');digitValidate(this.id);" class="input-small modify-input" data-rule-required="true" data-rule-digits="true"></td>

                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div> 
                                        </div>                                      


                                        <div class="row-fluid">
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
                                                                <th>Agent</th>
                                                                <th class='hidden-350'>Magazine</th>                                                                
                                                                <th class='hidden-1024'>QTY</th>  
                                                                <th class='hidden-1024'>Rate</th>  
                                                                <th class='hidden-50'>Credit</th>
                                                                <th class='hidden-50 upd'>Remove</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>001</td>
                                                                <td>001/Saman Kumara </td>
                                                                <td>52</td>
                                                                <td>100</td>
                                                                <td>200</td>
                                                                <td>6000</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>001</td>
                                                                <td>001/Saman Kumara </td>
                                                                <td>52</td>
                                                                <td>100</td>
                                                                <td>200</td>
                                                                <td>6000</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>001</td>
                                                                <td>001/Saman Kumara </td>
                                                                <td>52</td>
                                                                <td>100</td>
                                                                <td>200</td>
                                                                <td>6000</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>001</td>
                                                                <td>001/Saman Kumara </td>
                                                                <td>52</td>
                                                                <td>100</td>
                                                                <td>200</td>
                                                                <td>6000</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>001</td>
                                                                <td>001/Saman Kumara </td>
                                                                <td>52</td>
                                                                <td>100</td>
                                                                <td>200</td>
                                                                <td>6000</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <%-- start Return --%>

                                    <div class="row-fluid" id="ret" style="display: none;">
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Return
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="box-content nopadding">
                                                <table class="table table-hover table-nomargin table-condensed">
                                                    <thead>
                                                        <tr> 
                                                            <th>Return No</th>
                                                            <th>Agent Id</th>
                                                            <th width="350">Agent Name</th> 
                                                            <th>Magazine</th> 
                                                            <th>Qty</th>                                                              
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class='hidden-350'>
                                                                <select name="ret_id" id="ret_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">Re-001</option>
                                                                    <option value="">Re-002</option>
                                                                    <option value="">Re-003</option>
                                                                    <option value="">Re-004</option>
                                                                    <option value="">Re-005</option>
                                                                    <option value="">Re-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td>
                                                                <select name="agt_dis_id" id="ret_agt_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">Agt-001</option>
                                                                    <option value="">Agt-002</option>
                                                                    <option value="">Agt-003</option>
                                                                    <option value="">Agt-004</option>
                                                                    <option value="">Agt-005</option>
                                                                    <option value="">Agt-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td><input type="text" name="agt_name" id="agt_name" style="width: 285px;"class="input-medium name-input modify-input" data-rule-required="true" disabled="" ></td>

                                                            <td>
                                                                <select name="ret_mag" id="ret_mag" class='select2-me input-xlarge'  style="width: 100px;"  >
                                                                    <option value="">01</option>
                                                                    <option value="">02</option>
                                                                    <option value="">03</option>
                                                                    <option value="">04</option>
                                                                    <option value="">05</option>
                                                                    <option value="">06</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td class='hidden-1024'><input type="text" name="ret_qty" id="ret_qty" onkeyup="grabFocus(event,this.id,'ret_mag');digitValidate(this.id);" class="input-small modify-input" data-rule-required="true" data-rule-digits="true"></td>

                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div> 
                                        </div>                                    

                                        <div class="row-fluid">
                                            <div class="box box-color box-bordered">
                                                <div class="box-title">
                                                    <h3>
                                                        <i class="icon-table"></i>
                                                        Return Records
                                                    </h3>
                                                </div>
                                                <div class="box-content nopadding">
                                                    <table class="table table-hover table-nomargin">
                                                        <thead>
                                                            <tr>
                                                                <th>Agent Id</th>
                                                                <th>Agent Name</th>
                                                                <th class='hidden-350'>Return No</th>
                                                                <th class='hidden-1024'>Qty</th>  
                                                                <th class='hidden-50'>Edit</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Agt-001</td>
                                                                <td>Saman Kumara </td>
                                                                <td class='hidden-350'>Re-001</td>
                                                                <td class='hidden-350'>100</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-002</td>
                                                                <td>Dinesha</td>
                                                                <td class='hidden-350'>Re-003</td>
                                                                <td class='hidden-350'>10</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-003</td>
                                                                <td>Kelum Bandara</td>
                                                                <td class='hidden-350'>Re-004</td>
                                                                <td class='hidden-350'>150</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-004</td>
                                                                <td>Kamal Pranandu</td>
                                                                <td class='hidden-350'>Re-005</td>
                                                                <td class='hidden-350'>200</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-005</td>
                                                                <td>Chamika Peera</td>
                                                                <td class='hidden-350'>Re-006</td>
                                                                <td class='hidden-350'>220</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <%-- start Invoice --%>

                                    <div class="row-fluid" id="invoice" style="display: none;">
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Invoice
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="box-content nopadding">
                                                <table class="table table-hover table-nomargin table-condensed">
                                                    <thead>
                                                        <tr>
                                                            <th>Agent Id</th>
                                                            <th>Agent Name</th>
                                                            <th class='hidden-350'>Deliver No</th>
                                                            <th class='hidden-1024'>Qty</th>                                                        
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <select name="agt_dis_id" id="agt_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">Agt-001</option>
                                                                    <option value="">Agt-002</option>
                                                                    <option value="">Agt-003</option>
                                                                    <option value="">Agt-004</option>
                                                                    <option value="">Agt-005</option>
                                                                    <option value="">Agt-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td><input type="text" name="agt_name" id="agt_name" class="input-medium name-input modify-input" data-rule-required="true" disabled="" ></td>
                                                            <td class='hidden-350'>
                                                                <select name="deli_id" id="deli_id" class='select2-me input-xlarge'style="width: 100px;"  >
                                                                    <option value="">De-001</option>
                                                                    <option value="">De-002</option>
                                                                    <option value="">De-003</option>
                                                                    <option value="">De-004</option>
                                                                    <option value="">De-005</option>
                                                                    <option value="">De-006</option>                                                      
                                                                </select>
                                                            </td>
                                                            <td class='hidden-1024'><input type="text" name="qty" id="qty" class="input-small modify-input" data-rule-required="true" data-rule-digits="true"></td>

                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div> 
                                        </div>                                    

                                        <div class="row-fluid">
                                            <div class="box box-color box-bordered">
                                                <div class="box-title">
                                                    <h3>
                                                        <i class="icon-table"></i>
                                                        Invoice
                                                    </h3>
                                                </div>
                                                <div class="box-content nopadding">
                                                    <table class="table table-hover table-nomargin">
                                                        <thead>
                                                            <tr>
                                                                <th>Agent Id</th>
                                                                <th>Agent Name</th>
                                                                <th class='hidden-350'>Deliver No</th>
                                                                <th class='hidden-1024'>Qty</th>  
                                                                <th class='hidden-50'>Edit</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Agt-001</td>
                                                                <td>Saman Kumara </td>
                                                                <td class='hidden-350'>De-001</td>
                                                                <td class='hidden-350'>100</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-002</td>
                                                                <td>Dinesha</td>
                                                                <td class='hidden-350'>De-003</td>
                                                                <td class='hidden-350'>10</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-003</td>
                                                                <td>Kelum Bandara</td>
                                                                <td class='hidden-350'>De-004</td>
                                                                <td class='hidden-350'>150</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-004</td>
                                                                <td>Kamal Pranandu</td>
                                                                <td class='hidden-350'>De-005</td>
                                                                <td class='hidden-350'>200</td>
                                                                <td class='upd'><a href="#"><i class="icon-remove icon-2x"></i></a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>Agt-005</td>
                                                                <td>Chamika Peera</td>
                                                                <td class='hidden-350'>De-006</td>
                                                                <td class='hidden-350'>220</td>
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
        
        $(document).ready(function(){
               
        });
       
        function chan(){
            var option=  $('#option').val();
            if(option==2){
                $('#ret').css({
                    display:'block'
                });
                
                $('#distri').css({                    
                    display:'none'
                }); 
                $('#invoice').css({
                    display:'none'
                });
            }
            
            if(option==1){
                $('#ret').css({
                    display:'none'
                }); 
                $('#distri').css({
                    display:'block'
                }); 
                $('#invoice').css({
                    display:'none'
                });
            }
            if(option==3){
                $('#ret').css({
                    display:'none'
                }); 
                $('#distri').css({
                    display:'none'
                }); 
                $('#invoice').css({
                    display:'block'
                }); 
            }
        };
        
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
