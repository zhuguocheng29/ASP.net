<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.User>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--     <link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Delete User</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Are you sure you want to delete this?</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
  <div class="detailcontainer">

<fieldset>
   <%-- <legend>User</legend>--%>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Username) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Username) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Password) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Gender) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Gender) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Country) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Country) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="font">
        <%: Html.DisplayNameFor(model => model.Phone_number) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Phone_number) %>
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
    <li class="active">Delete User</li>
</asp:Content>
