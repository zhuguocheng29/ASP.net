<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.Order>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Delete Order</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Are you sure you want to delete this?</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
  <div class="detailcontainer">
<fieldset>
    <%--<legend>Order</legend>--%>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.brand) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.brand) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.price) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.price) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.buy_date) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.buy_date) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.User.Username) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.User.Username) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <p class="font">
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>
</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Delete Order</li>
</asp:Content>
