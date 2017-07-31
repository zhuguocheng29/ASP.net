<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.Order>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Order Detail</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The detail of the order.</p>
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
<p class="font">

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Delete", "Delete", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>
</div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Order Detail</li>
</asp:Content>
