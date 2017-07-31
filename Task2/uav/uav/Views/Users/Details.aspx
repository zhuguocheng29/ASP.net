<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.User>" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
<li class="active">User Details</li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">User Detail</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The details of users.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
  <div class="detailcontainer">
<fieldset>
    <%--<legend>User</legend>--%>

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
<p class="font">

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Delete", "Delete", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>
</div>  
</asp:Content>

