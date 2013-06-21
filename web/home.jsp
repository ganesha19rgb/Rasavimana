<%-- 
    Document   : home
    Created on : 29-May-2013, 13:58:44
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>



<%@page import="src.mySecurity"%>
<%@page import="model.User"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="model.HibernateUtil"%>
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

        <title>Home</title>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Bootstrap responsive -->
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
        <!-- Easy pie  -->
        <link rel="stylesheet" href="css/plugins/easy-pie-chart/jquery.easy-pie-chart.css">

        <!-- Theme CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Color CSS -->
        <link rel="stylesheet" href="css/themes.css">


        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- Nice Scroll -->
        <script src="js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- jQuery UI -->
        <script src="js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
        <script src="js/plugins/jquery-ui/jquery.ui.datepicker.min.js"></script>

        <!-- slimScroll -->
        <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- Sparkline -->
        <script src="js/plugins/sparklines/jquery.sparklines.min.js"></script>
        <!-- Easy pie -->
        <script src="js/plugins/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>


        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Form -->
        <script src="js/plugins/form/jquery.form.min.js"></script>

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

        </style>

    </head>

    <body>
           <%
               Session hsession = HibernateUtil.getSessionFactory().openSession();
                       Transaction tx = hsession.beginTransaction();
                     User u=(User)hsession.load(User.class, 1);

                    %>
        <%@include file="include/navigation.jsp" %>

        <div class="container-fluid" id="content">

            <div id="left">

                <div class="subnav">
                    <div class="subnav-title">
                        <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Best Selling</span></a>
                    </div>
                    <div class="subnav-content">
                        <div class="pagestats bar">
                            <span>Mar-2010:</span>
                            <div class="progress small">
                                <div class="bar" style="width:40%"></div>
                            </div>
                        </div>
                        <div class="pagestats bar">
                            <span>Feb-2010:</span>
                            <div class="progress small">
                                <div class="bar bar-lightred" style="width:80%"></div>
                            </div>
                        </div>
                        <div class="pagestats bar">
                            <span>Jan-2010:</span>
                            <div class="progress small">
                                <div class="bar bar-green" style="width:20%"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="subnav">
                    <div class="subnav-title">
                        <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Quick stats</span></a>
                    </div>
                    <div class="subnav-content">
                        <ul class="quickstats">
                            <li>
                                <span class="value">412</span>
                                <span class="name">Agents</span>
                            </li>
                            <li>
                                <span class="value">52</span>
                                <span class="name">Issues</span>
                            </li>

                        </ul>
                    </div>
                </div>
                <div class="subnav">
                    <div class="subnav-title">
                        <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Store Balance</span></a>
                    </div>
                    <div class="subnav-content">
                        <ul class="tiles tiles-center nomargin">                      
                            <li class="satgreen has-chart-2">
                                <a href="#"><span><div class="spark-me" sparkType="bar" sparkBarWidth="6" sparkHeight="55" sparkBarColor="#ffffff">25,44,52,43,36,25,40,38,30,28</div></span><span class='name'>Balance</span></a>
                            </li>                       
                        </ul>
                    </div>
                </div>
                <div class="subnav">
                    <div class="subnav-title">
                        <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Calendar</span></a>
                    </div>
                    <div class="subnav-content less">
                        <div class="jq-datepicker"></div>
                    </div>
                </div>
            </div>

            <div id="main">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="pull-left">
                            <h1>Welcome</h1>

                        </div>
                        <%@include file="include/top_right.jsp" %>

                    </div>
                 

                    <div class="row-fluid">
                        <div class="span12">
                            <ul class="tiles">
                                <li class="orange high long">
                                    <a href="magazine_data_entry.jsp"><span class='count'><i class="icon-book"></i> M</span><span class='name'><%= mySecurity.decrypt(u.getUname()) %></span></a>
                                </li>
                                <li class="blue">
                                    <a href="view_magazine.jsp"><span><i class="icon-sitemap"></i></span><span class='name'>Cost Breakdown</span></a>
                                </li>
                                <li class="red">
                                    <a href="https://mail.google.com/mail/" target="_blank"><span class='count'><i class="icon-envelope"></i> G</span><span class='name'>Mails</span></a>
                                </li>

                                <li class="lime">
                                    <a href="view_agent.jsp"><span><i class="icon-tasks"></i> A</span><span class='name'>View Agents</span></a>
                                </li>
                                <li class="pink">
                                    <a href="book.jsp"><span><i class="icon-paste"></i></span><span class='name'>Receipt Books</span></a>
                                </li>
                                <li class="blue long">
                                    <a href="search_by_route.jsp"><span><i class="icon-truck"></i> R</span><span class='name'>Route Info</span></a>
                                </li>
                                <li class="green long">
                                    <a href="view_stock.jsp"><span><i class="icon-cloud"></i> S</span><span class='name'>Stock</span></a>
                                </li>
                                <li class="brown">
                                    <a href="reg_mag.jsp"><span class='count'><i class="icon-plus-sign"></i> M</span><span class='name'>Add Magazine</span></a>
                                </li>
                                <li class="teal long">
                                    <a href="agentList_qty.jsp"><span class='count'><i class="icon-bar-chart"></i> A%</span><span class='name'>Agent Performance</span></a>
                                </li>
                                <li class="blue">
                                    <a href="reg_user.jsp"><span><i class="icon-cogs"></i></span><span class='name'>User Settings</span></a>
                                </li>
                                <li class="blue">
                                    <a href="view_return.jsp"><span><i class="icon-tasks"></i> R</span><span class='name'>View Returns</span></a>
                                </li>

                                <li class="pink long">
                                    <a href="not_pay.jsp"><span><i class="icon-money"></i> $</span><span class='name'>Due Payments</span></a>
                                </li>
                                <li class="magenta">
                                    <a href="reg_agent.jsp"><span><i class="icon-plus-sign"></i> A</span><span class='name'>Add Agent</span></a>
                                </li>
                                <li class="lime">
                                    <a href="view_delivery.jsp"><span class='count'><i class="icon-tasks"></i> D</span><span class='name'>View Deliveries</span></a>
                                </li>
                                <li class="orange">
                                    <a href="index.jsp"><span><i class="icon-signout"></i></span><span class='name'>Sign out</span></a>
                                </li>
                                <li class="red long">
                                    <a href="view_cate.jsp"><span><i class="icon-folder-open"></i> H</span><span class='name'>Note Book History</span></a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-th-large"></i>
                                        More Links
                                    </h3>
                                </div>
                                <div class="box-content">
                                    <ul class="minitiles">
                                        <li class='blue'>
                                            <a href="https://www.facebook.com/RASAVIMANAMAGAZINE" target="_blank"><i class="icon-facebook-sign"></i></a>
                                        </li>

                                        <li class='grey'>
                                            <a href="http://www.azbow.com" target="_blank"><i class="icon-magic"></i></a>
                                        </li>
                                    </ul>
                                    <ul class="stats">                                        
                                        <li class='magenta'>
                                            <a href="http://rasavimana.com/" target="_blank" style="text-decoration: none;">
                                                <i class="icon-star"></i>
                                                <div class="details">
                                                    <span class="big">Rasavimana</span>
                                                    <span>Official Web site</span>
                                                </div>
                                            </a>
                                        </li>

                                    </ul>
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
