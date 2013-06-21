<%-- 
    Document   : ad_invoice
    Created on : 14-Jun-2013, 13:02:55
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

        <title>Advertise</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- select2 -->
        <link rel="stylesheet" href="css/plugins/select2/select2.css">
        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">

        <!-- Datepicker -->
        <link rel="stylesheet" href="css/plugins/datepicker/datepicker.css">



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

        <!-- Theme framework -->
        <script src="js/eakroko.min.js"></script>
        <!-- Theme scripts -->
        <script src="js/application.min.js"></script>
        <!-- Just for demonstration -->
        <script src="js/demonstration.min.js"></script>
        <!-- select2 -->
        <script src="js/plugins/select2/select2.min.js"></script>
        <!-- Datepicker -->
        <script src="js/plugins/datepicker/bootstrap-datepicker.js"></script>
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
                                <a href="#">Advertise Invoice</a>
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
                                        Advertise Invoice
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <form action="#" method="POST" class='form-horizontal form-validate' id="bb">
                                        <div class="alert alert-success">
                                            <button type="button" class="close" data-dismiss="alert">x</button>
                                            <strong>Successful !  </strong>
                                            Record saved successfully.

                                        </div>
                                        <label><strong>Client Details</strong></label>
                                        <div style="border: 1px solid rgb(209, 209, 209);width: 51%;padding: 2% 1% 0% 4%;">
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Invoice No</label>
                                                <div class="controls">
                                                    <input type="text" name="inv_no" id="inv_no" class="input-xlarge" >
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">Previous Invoice No</label>
                                                <div class="controls">
                                                    <input type="text" name="pre_inv_no" id="pre_inv_no" class="input-xlarge" >
                                                    <button type="button" class="btn btn-primary" style="height: 30px;">Fill</button>
                                                </div>                                            
                                            </div>
                                        </div>

                                        <div style="margin-top: 23px;">
                                            <label><strong>Client Details</strong></label>
                                            <div style="border: 1px solid rgb(209, 209, 209);width: 51%;padding: 2% 1% 0% 4%;">
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Name</label>
                                                    <div class="controls">
                                                        <input type="text" name="client_name" id="client_name" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Address</label>
                                                    <div class="controls">
                                                        <input type="text" name="client_add" id="client_add" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">VAT Regd No</label>
                                                    <div class="controls">
                                                        <input type="text" name="vat_reg" id="vat_reg" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">NBT Regd No</label>
                                                    <div class="controls">
                                                        <input type="text" name="nbt_reg" id="nbt_reg" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Agency Name</label>
                                                    <div class="controls">
                                                        <input type="text" name="agency_name" id="agency_name" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Agency Address</label>
                                                    <div class="controls">
                                                        <input type="text" name="agency_add" id="agency_add" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Product Name</label>
                                                    <div class="controls">
                                                        <input type="text" name="pro_name" id="pro_name" class="input-xlarge"  data-rule-required="true">
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>

                                        <div style="margin-top: 23px;">
                                            <label><strong>Advertisement Details</strong></label>
                                            <div style="border: 1px solid rgb(209, 209, 209);width: 51%;padding: 2% 1% 0% 4%;">

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Magazine Code</label>
                                                    <div class="controls">
                                                        <select name="mag_id" id="mag_id" class='select2-me input-xlarge'style="width: 284px;"  >
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
                                                    <label for="type" class="control-label">Type</label>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="1"> One Page
                                                        </label>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="2"> Two Page
                                                        </label>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="3"> Branding Page
                                                        </label>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="4"> One Page + Branding Page
                                                        </label>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="5"> Two Page + Branding Page
                                                        </label>
                                                    </div>
                                                    <div class="controls">
                                                        <label class="radio">
                                                            <input type="radio" name="page" value="6"> Special
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Page Number</label>
                                                    <div class="controls">
                                                        <input type="text" name="page_num" id="page_num" class="input-xlarge"  data-rule-required="true" data-rule-digits="true">
                                                    </div>
                                                </div> 

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Date</label>
                                                    <div class="controls">
                                                        <input type="text"  name="ag_reg_date" id="ag_reg_date" value="<%=fdate%>" class="input-small datepick">                                               
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="vat" class="control-label"></label>
                                                    <div class="controls">
                                                        <label class="checkbox">
                                                            <input type="checkbox" name="vat" value="1" > VAT
                                                        </label>

                                                        <label class="checkbox">
                                                            <input type="checkbox" name="nbt" value="1" > NBT
                                                        </label>

                                                        <label class="checkbox">
                                                            <input type="checkbox" name="com" value="1" > Agent Commission
                                                        </label>
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Gross Total</label>
                                                    <div class="controls">
                                                        <input type="text" name="gros_total" id="gros_total" class="input-xlarge"  data-rule-required="true" data-rule-number="true">
                                                    </div>
                                                </div> 

                                            </div>
                                        </div>


                                        <div class="form-actions">
                                            <input type="submit" class="btn btn-primary" value="Submit">
                                            <button type="button" class="btn">Cancel</button>
                                        </div>
                                    </form>
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
