<%-- 
    Document   : left_panel
    Created on : 29-May-2013, 10:44:08
    Author     : Ishan Dinisha <ishan@azbow.com>
--%>

<div id="left">
    <%--
    <form action="#" method="GET" class='search-form'>
        <div class="search-pane">
            <input type="text" name="search" placeholder="Search here...">
            <button type="submit"><i class="icon-search"></i></button>
        </div>
    </form>
    --%>
    <div class="subnav">
        <div class="subnav-title">
            <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Registration</span></a>
        </div>
        <ul class="subnav-menu">

            <li>
                <a href="reg_agent.jsp">Agent</a>
            </li>
            <li>
                <a href="reg_mag.jsp">Magazine</a>
            </li>

        </ul>
    </div>
    <div class="subnav">
        <div class="subnav-title">
            <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Magazine</span></a>
        </div>
        <ul class="subnav-menu">
            <li>
                <a href="magazine_data_entry.jsp">Magazine Data Entry</a>
            </li>

            <li>
                <a href="view_stock.jsp">Stock</a>
            </li>

        </ul>
    </div>
    <div class="subnav">
        <div class="subnav-title">
            <a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Reports</span></a>
        </div>
        <ul class="subnav-menu">
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
        </ul>
    </div>
    <div class="subnav subnav-hidden">
        <div class="subnav-title">
            <a href="#" class='toggle-subnav'><i class="icon-angle-right"></i><span>View</span></a>
        </div>
        <ul class="subnav-menu">
            <li>
                <a href="view_agent.jsp">Agents</a>
            </li>
            <li>
                <a href="view_distributor.jsp">Distributors</a>
            </li>

        </ul>
    </div>
</div>