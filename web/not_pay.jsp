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

        <title>Due Payment</title>

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
        <!-- Tagsinput -->
        <link rel="stylesheet" href="css/plugins/tagsinput/jquery.tagsinput.css">
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
        <!-- TagsInput -->
        <script src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>

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
                            <h1>Due Payment</h1>
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
                                <a href="#">Due Payment</a>
                            </li>
                        </ul>
                        <div class="close-bread">
                            <a href="#"><i class="icon-remove"></i></a>
                        </div>
                    </div>

                    <div class="row-fluid" style="margin-top: 15px;">                        


                        <div class="control-group">
                            <label for="textfield" class="control-label">Magazine ID</label>
                            <div class="controls">
                                <div class="row-fluid">
                                    <select name="mag_id" id="mag_id" class='select2-me input-xlarge'style="width: 220px;"  >
                                        <option value="">mag-001</option>
                                        <option value="">mag-002</option>
                                        <option value="">mag-003</option>
                                        <option value="">mag-004</option>
                                        <option value="">mag-005</option>
                                        <option value="">mag-006</option>                                                      
                                    </select>
                                    <button id="search_1"class="btn btn-primary" style="height: 30px;">Search</button>
                                </div>
                            </div>
                        </div>

                        <div class="control-group">
                            <label for="textfield" class="control-label"><strong>OR</strong></label>

                        </div>



                        <div class="control-group">
                            <label for="textfield" class="control-label">Multiple Magazine</label>
                            <div class="controls">
                                <div class="span10">
                                    <select name="s2" id="s2" class='select2-me input-block-level' multiple="multiple">
                                        <option value="01">Option-01</option>
                                        <option value="02">Option-02</option>
                                        <option value="03">Option-03</option>
                                        <option value="04">Option-04</option>
                                        <option value="05">Option-05</option>
                                        <option value="06">Option-06</option>
                                        <option value="07">Option-07</option>
                                        <option value="08">Option-08</option>
                                        <option value="09">Option-09</option>
                                        <option value="10">Option-10</option>
                                    </select>
                                </div>
                                <div class="span2">
                                    <button id="search_2" class="btn btn-primary" style="height: 35px; width: 60%;">Search</button>
                                </div>
                            </div>
                        </div>


                    </div> 


                    <div class="row-fluid">
                        <div class="span12">
                            <div class="box box-color box-bordered">
                                <div class="box-title">
                                    <h3>
                                        <i class="icon-table"></i>
                                        Results
                                    </h3>
                                </div>
                                <div class="box-content nopadding">
                                    <table class="table table-hover table-nomargin dataTable table-bordered dataTable-columnfilter" style="width: auto!important;">
                                        <thead>
                                            <tr class='thefilter'>
                                                <th>Delivery ID</th>
                                                <th>Agent ID</th>
                                                <th>Date</th>                                                   
                                                <th>Qty</th>
                                                <th>Total</th>
                                                <th>Pay</th>
                                                <th>Balance</th>                                                 
                                            </tr>

                                            <tr>
                                                <th>Delivery ID</th>
                                                <th>Agent ID</th>
                                                <th>Date</th>                                                   
                                                <th>Qty</th>
                                                <th>Total</th>
                                                <th>Pay</th>
                                                <th>Balance</th>                                                 
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-003</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-007</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-004</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-004</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
                                            </tr>
                                            <tr>
                                                <td>De-004</td>
                                                <td><a href="personel_agent.jsp" target="_blank" class="go-link">Agt-007 / Supun Bandara</a></td>
                                                <td>05/03/2010</td>                                                    
                                                <td>150</td>
                                                <td>25000</td>
                                                <td>20000</td>
                                                <td>5000</td>
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


</body>
</html>
