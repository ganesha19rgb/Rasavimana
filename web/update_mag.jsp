<%-- 
    Document   : reg_mag
    Created on : 30-May-2013, 11:25:59
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
        <title>Registration</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <link rel='stylesheet' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/themes/base/jquery-ui.css'>
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

        <script src="js/jquery.mtz.monthpicker.js"></script>

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


        <%@include file="include/navigation.jsp" %>
        <div class="container-fluid" id="content">
            <%@include file="include/left_panel.jsp" %>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>Update</h1>
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
                                <a href="#">Magazine Update</a>
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
                                        Magazine Update
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <form action="#" method="POST" class='form-horizontal form-validate' id="bb">
                                       
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Magazine Id</label>
                                            <div class="controls">
                                                <input type="text" name="mag_id" id="mag_id" value="mag-004" class="input-xlarge" data-rule-required="true" data-rule-minlength="4">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Month/Year</label>
                                            <div class="controls">
                                                <input type="text" name="month" id="month" value="03/2013" class="input-xlarge"  data-rule-required="true">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Selling Price</label>
                                            <div class="controls">
                                                <input type="text" name="sel_price" id="sel_price" value="250" class="input-xlarge"  data-rule-required="true" data-rule-number="true">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Magazine Qty</label>
                                            <div class="controls">
                                                <input type="text" name="qty" id="qty" class="input-xlarge" value="100"   data-rule-required="true" data-rule-digits="true">
                                            </div>
                                        </div>                                       

                                        <div class="row-fluid">
                                            <label for="textfield" class="control-label"><strong>Expenses</strong></label>
                                        </div>
                                        <div class="box-content nopadding" style="margin-top: 10px;">                                              
                                            <table id="expense" class="table table-nomargin  table-bordered" style="width: 444px;border-top: 1px solid #ddd;">
                                                <tbody>
                                                    <tr>

                                                        <td width="140" class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text"  class="input-medium"  disabled="" value="Supplier Expense" style="cursor: default;border: none;background-color:white;"> </div></div></td>  
                                                        <td  class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text" name="sup_exp" id="sup_exp" value="5000" class="input-medium"  data-rule-number="true"> </div></div></td>                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text"  class="input-medium"  disabled="" value="Polythene Expense" style="cursor: default;border: none;background-color:white;"> </div></div></td>  
                                                        <td  class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text" name="pol_exp" id="pol_exp" class="input-medium" value="3000" data-rule-number="true"> </div></div></td>                                                       
                                                    </tr>
                                                    <tr>
                                                        <td class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text"  class="input-medium"  disabled="" value="Transport Expense" style="cursor: default;border: none;background-color:white;"> </div></div></td>  
                                                        <td  class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text" name="tra_exp" id="pol_exp" class="input-medium" value="2000" data-rule-number="true"> </div></div></td>                                                       
                                                    </tr>
                                                    <tr>
                                                        <td  class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text"  class="input-medium"  data-rule-required="true" value="Vehicle Breakdown" > </div></div></td>                                                       
                                                        <td  class='hidden-350'> <div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text" name="tra_exp" id="pol_exp" class="input-medium" value="3000" data-rule-number="true"> </div></div></td>                                                       
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="control-group">
                                            <div class="span3">
                                                <button id="add_row" type="button" class="btn btn-primary">+</button>
                                                <button id="remove_row" type="button" class="btn btn-primary">-</button>
                                            </div>
                                            <div class="span2">
                                                <button id="calc" type="button" class="btn btn-inverse">Calculate</button>

                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Total Cost</label>
                                            <div class="controls">
                                                <input type="text" name="total_cost" id="total_cost" value="13000" class="input-xlarge"  data-rule-number="true" disabled style="cursor: pointer;">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textfield" class="control-label">Per Mag Cost</label>
                                            <div class="controls">
                                                <input type="text" name="mag_cost" value="130" id="mag_cost" class="input-xlarge"  data-rule-number="true" disabled style="cursor: pointer;">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label for="textarea" class="control-label">Remarks</label>
                                            <div class="controls">
                                                <textarea name="re" id="textarea" rows="5" class="input-xlarge "></textarea>
                                            </div>
                                        </div>

                                        <div class="form-actions">
                                            <input type="submit" id="add_row" class="btn btn-primary" value="Submit">
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
            
            
            function getTotal(){
                var qty=parseFloat($('#qty').val());
                if(isNaN(qty)){
                    qty=1;
                }
                
               
                // var gg=   $('#expense tr:nth-child(4) td:nth-child(2) input').val();
                // alert(gg);
               
              
                var j=$('#expense tr').length;
                var total=0;
                var val=0;
                for(var i=1; i<=j; i++){
                    val=parseFloat($('#expense tr:nth-child('+i+') td:nth-child(2) input').val());
                    if(!isNaN(val)){
                        total=total+val;
                    }
                }
               
                $('#total_cost').val(total);
                $('#mag_cost').val(total/qty);
               
                
            <%--
    var sum_exp=sup_exp+pol_exp+tra_exp+other_exp;
    var per_mag=(sup_exp+pol_exp+tra_exp+other_exp)/qty;
                
    $('#total_cost').val(sum_exp);
    $('#mag_cost').val(per_mag);
            --%>
             
                };
           
            
                $('#month').monthpicker();
                $('#add_row').click(function(){
                    $('#expense tr:last').after('<tr><td><div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;"><input type="text"  class="input-medium"  data-rule-required="true" value="Other"> </div></div></td>  <td><div class="control-group" style="margin-bottom: 0;"> <div class="controls" style="margin-left: 0;">   <input type="text" name="tra_exp" id="pol_exp" class="input-medium"  data-rule-number="true"> </div></div></td></tr>');
                });
                $('#remove_row').click(function(){
                    $('#expense tr:last').remove();
                });
                $('#calc').click(function(){
                    getTotal();
                });
        </script>



    </body>

</html>