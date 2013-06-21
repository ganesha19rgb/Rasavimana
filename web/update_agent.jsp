<%-- 
    Document   : update_agent
    Created on : 06-Jun-2013, 14:21:34
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

        <title>Update Agent</title>

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
        <div class="container-fluid" id="content" style="height: 890px!important;">
            <%@include file="include/left_panel.jsp" %>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>Update Agent</h1>
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
                                <a href="registration.jsp">Registration</a>
                                <i class="icon-angle-right"></i>
                            </li>
                            <li>
                                <a href="#">Update Agent</a>
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
                                        Update Agent
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <form action="#" method="POST" class='form-horizontal form-validate' id="bb">
                                     
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Agent Id</label>
                                            <div class="controls">
                                                <input type="text" name="agent_id" value="agt-005" id="agent_id" class="input-xlarge" data-rule-required="true" data-rule-minlength="4">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Agent Name</label>
                                            <div class="controls">
                                                <input type="text" name="agent_name" value="Nilantha Hemachandra" id="agent_name" class="input-xlarge"  data-rule-required="true">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Date</label>
                                            <div class="controls">
                                                <input type="text"  name="ag_reg_date" id="ag_reg_date" value="<%=fdate%>" class="input-small datepick">                                               
                                            </div>
                                        </div>


                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Distributor Id</label>
                                            <div class="controls">
                                                <select name="dis_id" id="dis_id" class='select2-me input-small' style="width: 104px;">
                                                    <option value="01">DI-01</option>
                                                    <option value="02">DI-02</option>
                                                    <option value="03">DI-03</option>
                                                    <option value="04">DI-04</option>
                                                    <option value="05">DI-05</option>
                                                    <option value="06">DI-06</option>
                                                    <option value="07">DI-07</option>
                                                    <option value="08">DI-08</option>
                                                    <option value="09">DI-09</option>
                                                    <option value="10">DI-10</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textfield" class="control-label">About Agent</label>
                                            <div class="controls">
                                                <select name="routes" id="routes" class='select2-me input-xlarge' style="width: 284px;">
                                                    <option value="01">1. Keels</option>
                                                    <option value="02">2. Arpico</option>
                                                    <option value="03">3. Cargills</option>
                                                    <option value="04">4. Laugfs</option>
                                                    <option value="05">5. Galle Road</option>
                                                    <option value="06">7. Negambo Road</option>                                                  
                                                </select>
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Phone</label>
                                            <div class="controls">
                                                <input type="text" name="ag_phone" value="0711914913" id="ag_phone" class="input-xlarge mask_phone">                                              
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Address</label>
                                            <div class="controls">
                                                <input type="text"  name="ag_add" value="No:140, Kandy Rd, Colombo" id="ag_add"  class="input-xlarge"  >                                               
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="numberfield" class="control-label">Commission Margin</label>
                                            <div class="controls">
                                                <input type="text" value="2.5" name="com_margin" id="com_margin" data-rule-number="true" class="input-small span1" data-rule-maxlength="5"> %                                                
                                            </div>                                            
                                        </div>

                                        <div class="control-group">
                                            <label for="vat" class="control-label">VAT Include</label>
                                            <div class="controls">
                                                <label class="checkbox">
                                                    <input type="checkbox"  name="vat" id="vat" value="vat"  >     
                                                </label>
                                            </div>                                            
                                        </div>

                                        <div class="control-group">
                                            <label for="textarea" class="control-label">Remarks</label>
                                            <div class="controls">
                                                <textarea name="re" id="textarea" rows="5" class="input-xlarge ">Sell more than 300 pcs</textarea>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <input type="submit" class="btn btn-primary" value="Update">
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
        
        <script>         
                $('#dis_id').val('03');     
                 $('#routes').val('05');
        </script>


    </body>

</html>