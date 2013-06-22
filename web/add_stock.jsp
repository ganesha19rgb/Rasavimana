<%-- 
    Document   : add_stock
    Created on : 06-Jun-2013, 10:54:39
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
        <!-- Ganesha-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <!-- Apple devices fullscreen -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <!-- Apple devices fullscreen -->
        <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />

        <title>Add Stock</title>

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
    
        <!-- Datepicker -->
        <link rel="stylesheet" href="css/plugins/datepicker/datepicker.css">
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
        
          <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>
        <script src="js/plugins/datatable/TableTools.min.js"></script>
        <script src="js/plugins/datatable/ColReorder.min.js"></script>
        <script src="js/plugins/datatable/ColVis.min.js"></script>
        <script src="js/plugins/datatable/jquery.dataTables.columnFilter.js"></script>
<!-- Chosen -->
        <script src="js/plugins/chosen/chosen.jquery.min.js"></script>
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

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>
        <!-- Datepicker -->
        <script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
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
                            <h1>Add Stock</h1>
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
                                <a href="registration.jsp">Add</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Add Stock</a>
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
                                        Add Stock
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <div class="alert alert-success">
                                        <button type="button" class="close" data-dismiss="alert">x</button>
                                        <strong>Successful !  </strong>
                                        Record saved successfully.

                                    </div>
                                    <div class="span5">
                                        <form action="#" method="POST" class='form-horizontal form-validate' id="bb">

                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Date</label>
                                                <div class="controls">
                                                    <input type="text"  name="date" id="date" value="<%=fdate%>" class="input-medium datepick">   
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Magazine Id</label>
                                                <div class="controls">
                                                    <select name="mag_id" id="mag_id" class='select2-me input-xlarge'style="width: 164px;"  >
                                                        <option value="">mag-001</option>
                                                        <option value="">mag-002</option>
                                                        <option value="">mag-003</option>
                                                        <option value="">mag-004</option>
                                                        <option value="">mag-005</option>
                                                        <option value="">mag-006</option>                                                      
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Qty</label>
                                                <div class="controls">
                                                    <input type="text" name="phone" id="phone" class="input-medium" data-rule-digits="true" data-rule-required="true">                                              
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <input type="submit" class="btn btn-primary" value="Submit">
                                                <button type="button" class="btn">Cancel</button>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="span6">
                                        <div class="box box-color box-bordered" style="margin-top: -19px;">
                                            <div class="box-title">
                                                <h3>
                                                    <i class="icon-table"></i>
                                                    Magazine History
                                                </h3>
                                            </div>
                                            <div class="box-content nopadding">
                                                <table class="table table-hover table-nomargin dataTable table-bordered">
                                                    <thead>
                                                        <tr class='thefilter'>                                                                                                        
                                                            <th class='hidden-350'>Date</th>  
                                                            <th>Magazine</th>  
                                                            <th class='hidden-350'>Qty</th> 
                                                            <th class='hidden-350'>Edit</th> 
                                                        </tr>

                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-001</td>                                                            
                                                            <td class='hidden-350'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-002</td>                                                          
                                                            <td class='hidden-350'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-001</td>                                                           
                                                            <td class='hidden-350'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-003</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-002</td>                                                        
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-004</td>                                                            
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-003</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                          <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-003</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                          <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-001</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                         <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-001</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
                                                        </tr>
                                                         <tr>
                                                            <td class='hidden-350'>05/03/2010</td>
                                                            <td class='hidden-350'>Mag-001</td>                                                           
                                                            <td class='hidden-1024'>1300</td>
                                                            <td class='upd'><a href="update_stock.jsp"><i class="icon-edit icon-2x"></i></a></td>
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
