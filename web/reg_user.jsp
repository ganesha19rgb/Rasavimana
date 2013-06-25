<%-- 
    Document   : reg_user
    Created on : 07-Jun-2013, 12:17:43
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<%@page import="org.hibernate.Session"%>
<%@page import="mapping.NewHibernateUtil"%>
<%@page import="java.util.List"%>
<%@page import="mapping.User"%>
<%@page import="org.hibernate.Criteria"%>
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

        <title>User</title>

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

        <!-- dataTables -->
        <script src="js/plugins/datatable/jquery.dataTables.min.js"></script>

        <!-- complexify -->
        <script src="js/plugins/complexify/jquery.complexify-banlist.min.js"></script>
        <script src="js/plugins/complexify/jquery.complexify.min.js"></script>

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
        <!--My Functions-->
        <script src="js/MyFunctions.js"></script>


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
            .container-fluid{
                height: auto!important;
            }
        </style>

    </head>

    <body>
        <%Session hsession = NewHibernateUtil.getSessionFactory().openSession();%>
        <%@include file="include/navigation.jsp" %>
        <div class="container-fluid" id="content">
            <%@include file="include/left_panel.jsp" %>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>User</h1>
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
                                <a href="#">User</a>

                            </li>

                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>


                    <div class="row-fluid">
                        <div class="span7">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-user"></i>
                                        Edit user profile
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <ul class="tabs tabs-inline tabs-top">
                                        <li class='active'>
                                            <a href="#profile" data-toggle='tab'><i class="icon-user"></i> Change Password</a>
                                        </li>
                                        <li>
                                            <a href="#notifications" data-toggle='tab'><i class="icon-bullhorn"></i> Create User</a>
                                        </li>
                                        <li>
                                            <a href="#security" data-toggle='tab'><i class="icon-lock"></i> Details</a>
                                        </li>
                                        <li>
                                            <a href="#edit" data-toggle='tab'><i class="icon-lock"></i> Edit User</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content padding tab-content-inline tab-content-bottom">
                                        <div class="tab-pane active" id="profile">                                         
                                            <div class="row-fluid">

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Current Password</label>
                                                    <div class="controls">
                                                        <input type="password" name="cur_pass" id="cur_pass" class="input-xlarge"  data-rule-required="true" style="width: 255px;">
                                                    </div>
                                                </div>

                                                <div class="control-group">
                                                    <label for="pw" class="control-label right">New Password</label>
                                                    <div class="controls">
                                                        <div class="input-xlarge">
                                                            <input type="password" class='complexify-me input-block-level'>
                                                            <span class="help-block">
                                                                <div class="progress progress-info">
                                                                    <div class="bar bar-red" style="width: 0%"></div>
                                                                </div>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>



                                            </div>

                                        </div>
                                        <div class="tab-pane"  id="notifications">
                                            <form class='form-horizontal form-validate' id="reg_user">
                                                <div class="alert alert-success">
                                                    <button type="button" class="close" data-dismiss="alert">x</button>
                                                    <strong>Successful !  </strong>
                                                    Record saved successfully.

                                                </div>

                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">Full Name</label>
                                                    <div class="controls">
                                                        <input type="text" name="fname" id="fname" class="input-xlarge" data-rule-required="true" data-rule-minlength="4">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">User Name</label>
                                                    <div class="controls">
                                                        <input type="text" name="uname" id="uname" class="input-xlarge"  data-rule-required="true" data-rule-minlength="4">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="textfield" class="control-label">User Type</label>
                                                    <div class="controls">
                                                        <select style="width: 283px;" name="usertype">
                                                            <option>Admin</option>
                                                            <option>VAT Admin</option>
                                                            <option>User</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="pwfield" class="control-label">Password</label>
                                                    <div class="controls">
                                                        <input type="password" name="pwfield" id="pwfield" class="input-xlarge" data-rule-required="true">
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label for="confirmfield" class="control-label">Confirm password</label>
                                                    <div class="controls">
                                                        <input type="password" name="confirmfield" id="confirmfield" class="input-xlarge" data-rule-equalTo="#pwfield" data-rule-required="true">
                                                    </div>
                                                </div>

                                                <div class="form-actions">
                                                    <input type="button" onclick="reg_user('reg_user')" class="btn btn-primary" value="Submit">
                                                    <button type="button" class="btn">Cancel</button>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="security">                                       
                                            <table class="table table-hover table-nomargin">
                                                <thead>
                                                    <tr class='thefilter'>
                                                        <th>Full Name</th>
                                                        <th>User Name</th> 
                                                        <th>User Type</th>  
                                                    </tr>

                                                </thead>
                                                <tbody>
                                                    <%
                                                        Criteria c = hsession.createCriteria(User.class);
                                                        List<User> list = c.list();
                                                        for (User u1 : list) {
                                                    %>
                                                    <tr>
                                                        <td><%= u1.getFname()%></td>
                                                        <td><%= u1.getUname()%></td>
                                                        <td><%= u1.getUserType()%></td>
                                                    </tr>
                                                    <%}%>
                                                </tbody>
                                            </table>                                            
                                        </div>

                                        <div class="tab-pane" id="edit">                                       
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">User Name</label>
                                                <div class="controls">
                                                    <select name="username" id="username" class='select2-me input-xlarge'style="width: 220px;"  >
                                                        <option value="">kama123</option>
                                                        <option value="">npad</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="textfield" class="control-label">User Type</label>
                                                <div class="controls">
                                                    <select>
                                                        <option>Admin</option>
                                                        <option>VAT Admin</option>
                                                        <option>User</option>

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="control-group">
                                                <label for="pwfield" class="control-label">Password</label>
                                                <div class="controls">
                                                    <input type="password" name="pwfield" id="pwfield" class="input-medium" style="width: 206px!important;" data-rule-required="true">
                                                </div>
                                            </div>
                                            <input type="submit" class="btn btn-primary" value="Change">
                                            <button type="button" class="btn">Cancel</button>
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
