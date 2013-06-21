<%-- 
    Document   : navigation
    Created on : 29-May-2013, 10:43:13
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<%
    String url = request.getRequestURL().toString();
    String tpage = (url.substring(url.lastIndexOf("/") + 1));
    String thispage = tpage.substring(0, tpage.lastIndexOf("."));

%>

<div id="navigation">
    <div class="container-fluid">
        <a href="home.jsp" id="brand">Rasavimana</a>
        <a href="#" class="toggle-nav" rel="tooltip" data-placement="bottom" title="Toggle navigation"><i class="icon-reorder"></i></a>
        <ul class='main-nav'>
            <li>
                <a href="registration.jsp" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>Registration</span>
                    <span class="caret"></span>
                </a>

                <ul class="dropdown-menu">
                    <li>
                        <a href="reg_distri.jsp">Distributors</a>
                    </li>
                    <li>
                        <a href="reg_agent.jsp">Agent</a>
                    </li>
                    <li>
                        <a href="reg_supplier.jsp">Supplier</a>
                    </li>
                    <li>
                        <a href="reg_mag.jsp">Magazine</a>
                    </li> 
                    <li>
                        <a href="invoice_book_reg.jsp">Invoice Book</a>
                    </li>
                    <li>
                        <a href="return_book_reg.jsp">Return Book</a>
                    </li>
                    <li>
                        <a href="delivery_book_reg.jsp">Delivery Book</a>
                    </li>   
                    <li>
                        <a href="reg_route.jsp">Route</a>
                    </li>  


                </ul>
            </li>
            <li class=''>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>View</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="view_agent.jsp">Agents</a>
                    </li>
                    <li>
                        <a href="view_distributor.jsp">Distributors</a>
                    </li>
                    <li>
                        <a href="view_suplier.jsp">Suppliers</a>
                    </li>



                </ul>
            </li>
            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>                
                    <span>Magazine</span> 
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="magazine_data_entry.jsp">Magazine Data Entry</a>
                    </li>
                    <li>
                        <a href="view_stock.jsp">Stock</a>
                    </li>

                </ul>

            </li>
            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>Receipt Books</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="view_invoice_book.jsp">Invoice Book</a>
                    </li>
                    <li>
                        <a href="view_return_book.jsp">Return Book</a>
                    </li>
                    <li>
                        <a href="view_delivery_book.jsp">Delivery Book</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>Reports</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="view_delivery.jsp">Delivery</a>
                    </li>
                    <li>
                        <a href="view_return.jsp">Return</a>
                    </li>
                    <li>
                        <a href="view_cate.jsp">Note Book History</a>
                    </li>
                    <li>
                        <a href="search_by_route.jsp">Route Info</a>
                    </li>
                    <li>
                        <a href="not_pay.jsp">Due Payment</a>
                    </li>
                    <li>
                        <a href="agentList_qty.jsp">Agent Performance</a>
                    </li>

                    <li>
                        <a href="view_magazine.jsp">Magazine Cost</a>
                    </li>
                    <li>
                        <a href="vat_list.jsp">VAT List</a>
                    </li>
                    <li>
                        <a href="vat_list2.jsp">VAT Report By Months</a>
                    </li>
                    <li>
                        <a href="totalByMag.jsp">Sales By Magazine</a>
                    </li>

                </ul>
            </li>
            <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>Advertise</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="ad_invoice.jsp">Invoice</a>
                    </li>
                    <li>
                        <a href="tax_invoice.jsp">Tax Invoice</a>
                    </li>
                     <li>
                        <a href="ad_report.jsp">Advertisement Report</a>
                    </li>
                </ul>
            </li>
            
             <li>
                <a href="#" data-toggle="dropdown" class='dropdown-toggle'>
                    <span>Stock</span>
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="stock_in.jsp">Stock In</a>
                    </li>  
                     <li>
                        <a href="stock_out.jsp">Stock Out</a>
                    </li>  
                     <li>
                        <a href="stock_his.jsp">Stock History</a>
                    </li> 
                </ul>
            </li>


        </ul>
        <div class="user">
            <ul class="icon-nav">                


                <li class='dropdown colo'>
                    <a href="#" class='dropdown-toggle' data-toggle="dropdown"><i class="icon-tint"></i></a>
                    <ul class="dropdown-menu pull-right theme-colors">
                        <li class="subtitle">
                            Predefined colors
                        </li>
                        <li>
                            <span class='red'></span>
                            <span class='orange'></span>
                            <span class='green'></span>
                            <span class="brown"></span>
                            <span class="blue"></span>
                            <span class='lime'></span>
                            <span class="teal"></span>
                            <span class="purple"></span>
                            <span class="pink"></span>
                            <span class="magenta"></span>
                            <span class="grey"></span>
                            <span class="darkblue"></span>
                            <span class="lightred"></span>
                            <span class="lightgrey"></span>
                            <span class="satblue"></span>
                            <span class="satgreen"></span>
                        </li>
                    </ul>
                </li>

            </ul>
            <div class="dropdown">
                <a href="#" class='dropdown-toggle' data-toggle="dropdown">Kasun Dasanayake <img src="img/demo/user.jpg" alt=""></a>
                <ul class="dropdown-menu pull-right">

                    <li>
                        <a href="reg_user.jsp">Account settings</a>
                    </li>
                    <li>
                        <a href="index.jsp">Sign out</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>