<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<uav.Models.Order>>" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
<li class="active">Index</li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<%--<link href="../../Content/OrderStyle.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/OrderStyle.css") %>" rel="stylesheet" type="text/css"/>

<%--<script src="../../Scripts/jquery-1.8.2.js" type="text/javascript"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-1.8.2.js") %>
<%--<script src="../../Scripts/jquery-ui-1.8.24.js" type="text/javascript"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-ui-1.8.24.js") %>

<script type="text/javascript">
    $(document).ready(function () {
        $('#data tbody tr:even').addClass("silver");
        $('#data tbody tr').mouseover(function () {
            $(this).addClass('dataHover');
        });
        $('#data tbody tr').mouseout(function () {
            $(this).removeClass('dataHover');
        });
    });
</script>

<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Index</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The index pages of orders.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>


<div class="contactContainer" >
<table id="data">
    <thead>
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
    </thead>
<tbody>
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
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>
</tbody>
</table>
    <div class="rightC">
        <p>
    <%: Html.ActionLink("Create New", "Create") %>| <%: Html.ActionLink("Search", "Search") %>
</p>
        </div>
</div>
</asp:Content>

