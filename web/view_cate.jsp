<%-- 
    Document   : view_cate
    Created on : 03-Jun-2013, 11:01:36
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

        <title>Note Book</title>

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
        <script src="js/plugins/datatable/TableTools.min.js"></script>

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
            .row-fluid .span3{
                width: 25.076923%;
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
                            <h1>Note Book History</h1>
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
                                <a href="view_cate.jsp">Note Book History</a>    

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
                                        <i class="icon-table"></i>
                                        View By Category
                                    </h3>
                                </div>

                                <div class="box-content">
                                    <div class="option-sel row-fluid">                                     
                                        <div class="control-group">
                                            <label for="textfield" class="control-label" style="width: 87px; float: left;">Search By</label>
                                            <div class="controls" style="margin-left: 65px;">
                                                <select name="option" id="option" onchange="chan();">
                                                    <option value="1">Deliver Note</option>
                                                    <option value="2">Return Note</option>
                                                    <option value="3">Invoice Note</option>                                                                                                         
                                                </select>
                                            </div>
                                        </div>

                                    </div>

                                    <%-- start Deliver --%>

                                    <div class="row-fluid" id="delivery" >
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Search By Deliver Note
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span3" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">From</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="from" id="from" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                </div>
                                            </div>

                                            <div class="span4" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">To</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="to" id="to" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                    <button class="btn btn-primary" style="margin-top: -9px;height: 30px;">Search</button>
                                                </div>
                                            </div>
                                        </div>                                      


                                        <div class="row-fluid" >
                                            <div class="span12">
                                                <div class="box box-color box-bordered">
                                                    <div class="box-title">
                                                        <h3>
                                                            <i class="icon-table"></i>
                                                            Result List
                                                        </h3>
                                                    </div>
                                                    <div class="box-content nopadding">
                                                        <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: 100%!important;">
                                                            <thead>
                                                                <tr class='thefilter'>
                                                                    <th>Deliver ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>

                                                                </tr>
                                                                <tr>
                                                                    <th>Deliver ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>
                                                                </tr>

                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>De-001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-002 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Kandy</td>
                                                                </tr>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%-- start Return --%>

                                    <div class="row-fluid" id="return" style="display: none;" >
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Search By Return Note
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span3" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">From</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="from" id="from" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                </div>
                                            </div>

                                            <div class="span4" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">To</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="to" id="to" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                    <button class="btn btn-primary" style="margin-top: -9px;height: 30px;">Search</button>
                                                </div>
                                            </div>
                                        </div>                                      


                                        <div class="row-fluid">
                                            <div class="span12">
                                                <div class="box box-color box-bordered">
                                                    <div class="box-title">
                                                        <h3>
                                                            <i class="icon-table"></i>
                                                            Result List
                                                        </h3>
                                                    </div>
                                                    <div class="box-content nopadding">
                                                        <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: 100%!important;">
                                                            <thead>
                                                                <tr class='thefilter'>
                                                                    <th>Return ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>

                                                                </tr>
                                                                <tr>
                                                                    <th>Return ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>
                                                                </tr>

                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>002</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>003</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>004</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>005</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>006</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Kurunegala</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                     <%-- start Invoice --%>

                                     <div class="row-fluid" id="invoice" style="display: none;" >
                                        <div class="box-title">
                                            <h3>
                                                <i class="icon-edit"></i>
                                                Search By Invoice Note
                                            </h3>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span3" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">From</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="from" id="from" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                </div>
                                            </div>

                                            <div class="span4" style="margin-left: 0;">
                                                <div class="row-fluid">
                                                    <label for="textfield" class="control-label">To</label> 
                                                </div>
                                                <div class="row-fluid">
                                                    <input type="text" name="to" id="to" class="input-medium" data-rule-required="true" data-rule-minlength="4"> 
                                                    <button class="btn btn-primary" style="margin-top: -9px;height: 30px;">Search</button>
                                                </div>
                                            </div>
                                        </div>                                      


                                        <div class="row-fluid">
                                            <div class="span12">
                                                <div class="box box-color box-bordered">
                                                    <div class="box-title">
                                                        <h3>
                                                            <i class="icon-table"></i>
                                                            Result List
                                                        </h3>
                                                    </div>
                                                    <div class="box-content nopadding">
                                                        <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: 100%!important;">
                                                            <thead>
                                                                <tr class='thefilter'>
                                                                    <th>Invoice ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>

                                                                </tr>
                                                                <tr>
                                                                    <th>Invoice ID</th>
                                                                    <th>Date</th>
                                                                    <th>Agent</th>                                                                    
                                                                    <th>Route</th>
                                                                </tr>

                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>002</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>003</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>004</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>001</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>005</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>006</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>007</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>008</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>009</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>010</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>011</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Colombo</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>012</td>
                                                                    <td class='hidden-350'>05/03/2010</td>
                                                                    <td> <a href="personel_agent.jsp" target="_blank" class="go-link">Agt-001 / Supun Bandara</a></td> 
                                                                    <td class='hidden-350'>Kurunegala</td>
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
       
        function chan(){
            var option=  $('#option').val();
            if(option==2){
                $('#return').css({
                    display:'block'
                }); 
                $('#delivery').css({
                    display:'none'
                }); 
                $('#invoice').css({
                    display:'none'
                });
            }
            
            if(option==1){
                $('#return').css({
                    display:'none'
                }); 
                $('#delivery').css({
                    display:'block'
                }); 
                $('#invoice').css({
                    display:'none'
                });
            }
            if(option==3){
                $('#return').css({
                    display:'none'
                }); 
                $('#delivery').css({
                    display:'none'
                }); 
                $('#invoice').css({
                    display:'block'
                }); 
            }
        };
    </script>


</body>

</html>
