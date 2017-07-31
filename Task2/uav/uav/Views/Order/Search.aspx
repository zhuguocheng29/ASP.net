<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<uav.Models.Order>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <script type="text/javascript">
         function SubmitFrm() {
             var protocol = window.location.protocol;
             var host = window.location.host;
             var pathname = window.location.pathname;
             pathname = pathname.substring(0, 13);
             var newUrl = protocol + "//" + host + pathname + "/";
             var Searchtxt = document.getElementById("txtSearch").value;
             window.location = newUrl + encodeURIComponent(Searchtxt);
         }
                    </script>--%>
<%--<script src="../../Scripts/jquery-1.8.2.js" type="text/javascript"></script>
<script src="../../Scripts/jquery-ui-1.8.24.js" type="text/javascript"></script>--%>
<%--<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>

<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Search Order</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">You can search orders by username.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>

<%--    <% using(Html.BeginForm("Search", "Order")) %>  
    <% { %>  
        Enter your username to search your order:<br />  
    <input type="text"  id="txtSearch" />
        <input type="submit" value="Submit" onclick="SubmitFrm(); return false;" />  
    <% } %>  --%>
<div class="searchcontainer">
     <% using(Html.BeginForm("Search", "Order")) %>  
    <% { %>  
        Enter your username to search your order:<br /> 
    <div style="width:160px;display:inline;">
      <%= Html.TextBox("Username")%> 
        </div> 
        <input id="submit" type="submit" value="Search" onclick="show()"/> 
        <%-- <input id="submit2" type="submit" value="Submit" onclick="show()" style="width:160px;display:inline;"/> --%>
        
    <% } %>  
   
    <script type="text/javascript">
       
        function show() {
            document.getElementById('submit').onclick =
            makeItVisible;
        };

        function makeItVisible() {
            document.getElementById('test').style.visibility='visible';
        }

        
    </script>





<div class="contactContainer2" >
<table>
    <tr>
         <th>
            <%: Html.DisplayNameFor(model => model.User.Username) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.brand) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.price) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.buy_date) %>
        </th>

        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.User.Username) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.brand) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.price) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.buy_date) %>
        </td>

        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> 
            <%: Html.ActionLink("Details", "Details", new { id=item.Id }) %> 
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>
</div>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
     <div class="rightC">
    <%: Html.ActionLink("Create New", "Create") %>
    </div>
</div>

</div>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Search Order</li>
</asp:Content>
