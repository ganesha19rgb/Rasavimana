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

        <title>Route Info</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
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
        <script src="js/plugins/datatable/dataTables.scroller.min.js"></script>
        <!-- Chosen -->
        <script src="js/plugins/chosen/chosen.jquery.min.js"></script>        

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>

        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>

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
            .box .box-title {
                border-bottom:none;

            }

            .table tr td{
                padding: 5px;
            }
            .icon-map-marker{
                margin-left: 0!important;
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
                            <h1>Route Info</h1>
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
                                <a href="#">Route Info</a>
                            </li>
                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>

                    <div class="row-fluid" style="margin-top: 15px;">                        

                        <div class="span4" style="padding-left: 1%;">
                            <div class="row-fluid">
                                <label for="textfield" class="control-label">Magazine ID </label> 
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
                                <label for="textfield" class="control-label">Route</label> 
                            </div>
                            <div class="row-fluid">
                                <select name="route" id="route" class='select2-me input-xlarge'style="width: 220px;"  >
                                    <option value="01">1. Keels</option>
                                    <option value="02">2. Arpico</option>
                                    <option value="03">3. Cargills</option>
                                    <option value="04">4. Laugfs</option>
                                    <option value="05">5. Galle Road</option>
                                    <option value="06">7. Negambo Road</option>                                                       
                                </select>
                            </div>
                        </div>
                        <div class="span4" style="padding-left: 1%;">
                            <div class="row-fluid">
                                <label for="textfield" class="control-label">Option</label> 
                            </div>
                            <div class="row-fluid">
                                <select name="option" id="option" onchange="chan();">
                                    <option value="1">Deliveries</option>
                                    <option value="2">Returns</option>
                                    <option value="3">Invoices</option>                                                                                                         
                                </select>
                            </div>
                        </div>
                    </div> 


                    <div class="row-fluid" id="deli">
                        <div class="span12">
                            <div class="box">
                                <div class="box-title">
                                    <div class="span12">
                                        <h3 style="float: none;">
                                            <i class="icon-bookmark"></i>
                                            24 Magazine <span style="opacity: 0.5;">|</span> Galle Road <span style="opacity: 0.5;">|</span> Delivery Info
                                        </h3>
                                        <div class="row-fluid">
                                            <div class="invoice-from" style="padding-left: 1%;">
                                                <span>Deliver Qty : <abbr title="Deliver Qty">200</abbr></span><br/>
                                                <%--
                                                <span>Return Qty : 20</span><br/>
                                                <span>Total Sell Qty : 180</span><br/>
                                                --%>
                                                <span>Total Value : <abbr title="Total Value">Rs 36000.00</abbr></span><br/>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="box box-color box-bordered" style="margin-top: 10px;">
                                    <div class="box-title">
                                        <h3>
                                            <i class="icon-table"></i>
                                            Result List
                                        </h3>
                                    </div>
                                    <div class="box-content  nopadding">
                                        <table class="table table-hover dataTable table-nomargin table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Agent ID</th>                                                    
                                                    <th>Agent Name</th>
                                                    <th>Date</th>  
                                                    <th>Delivery ID</th>
                                                    <th>Qty</th>
                                                    <th>Value</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row-fluid" id="ret" style="display: none;">
                        <div class="span12">
                            <div class="box">
                                <div class="box-title">
                                    <div class="span12">
                                        <h3 style="float: none;">
                                            <i class="icon-bookmark"></i>
                                            24 Magazine <span style="opacity: 0.5;">|</span> Galle Road <span style="opacity: 0.5;">|</span> Return Info
                                        </h3>
                                        <div class="row-fluid">
                                            <div class="invoice-from" style="padding-left: 1%;">
                                                <span>Deliver Qty : <abbr title="Deliver Qty">200</abbr></span><br/>                                               
                                                <span>Return Qty : <abbr title="Return Qty">20</abbr></span><br/>                                             
                                                <span>Total Value : <abbr title="Total Value">Rs 36000.00</abbr></span><br/>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="box box-color box-bordered" style="margin-top: 10px;">
                                    <div class="box-title">
                                        <h3>
                                            <i class="icon-table"></i>
                                            Result List
                                        </h3>
                                    </div>
                                    <div class="box-content  nopadding">
                                        <table class="table table-hover dataTable table-nomargin table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Agent ID</th>                                                    
                                                    <th>Agent Name</th>
                                                    <th>Date</th>  
                                                    <th>Return ID</th>
                                                    <th>Qty</th>
                                                    <th>Value</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="row-fluid" id="inv" style="display: none;">
                        <div class="span12">
                            <div class="box">
                                <div class="box-title">
                                    <div class="span12">
                                        <h3 style="float: none;">
                                            <i class="icon-bookmark"></i>
                                            24 Magazine <span style="opacity: 0.5;">|</span> Galle Road <span style="opacity: 0.5;">|</span> Invoice Info
                                        </h3>
                                        <div class="row-fluid">
                                            <div class="invoice-from" style="padding-left: 1%;">
                                                <span>Sold Qty : <abbr title="Sold Qty">200</abbr></span><br/>                                              
                                                <span>Total Value : <abbr title="Total Value">Rs 36000.00</abbr></span><br/>                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="box box-color box-bordered" style="margin-top: 10px;">
                                    <div class="box-title">
                                        <h3>
                                            <i class="icon-table"></i>
                                            Result List
                                        </h3>
                                    </div>
                                    <div class="box-content  nopadding">
                                        <table class="table table-hover dataTable table-nomargin table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Agent ID</th>                                                    
                                                    <th>Agent Name</th>
                                                    <th>Date</th>  
                                                    <th>Invoice ID</th>
                                                    <th>Qty</th>
                                                    <th>Value</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
                                                </tr>
                                                <tr>
                                                    <td>003</td>
                                                    <td><a href="personel_agent.jsp" target="_blank" class="go-link">Supun Bandara</a></td>
                                                    <td>05/03/2010</td>                                                    
                                                    <td>1521</td>
                                                    <td>50</td>
                                                    <td>10000</td>                                                  
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

        <script>
            function chan(){
                var option=  $('#option').val();
                if(option==2){
                    $('#ret').css({
                        display:'block'
                    }); 
                    $('#deli').css({
                        display:'none'
                    }); 
                    $('#inv').css({
                        display:'none'
                    });
                }
            
                if(option==1){
                    $('#ret').css({
                        display:'none'
                    }); 
                    $('#deli').css({
                        display:'block'
                    }); 
                    $('#inv').css({
                        display:'none'
                    });
                }
                if(option==3){
                    $('#ret').css({
                        display:'none'
                    }); 
                    $('#deli').css({
                        display:'none'
                    }); 
                    $('#inv').css({
                        display:'block'
                    }); 
                }
            };
        </script>


    </body>
</html>
