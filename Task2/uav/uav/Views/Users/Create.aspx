<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.User>" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Create User</li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <link href="../../Content/ValidationError.css" rel="stylesheet" type="text/css" />
<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<link href="<%: Url.Content("~/Content/ValidationError.css") %>" rel="stylesheet" type="text/css"/>

<%--<h2>Edit</h2>--%>
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Create User</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">You can create a new user,please enter valid values.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
<div class="editcontainer">
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <%--<legend>User</legend>--%>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Username) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Username) %>
            <%: Html.ValidationMessageFor(model => model.Username) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Password) %>
        </div>
        <div class="bcontainer">
            <%--<%:@Html.PasswordFor(model => model.Password) %>--%>
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Gender) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Gender) %>
            <%: Html.ValidationMessageFor(model => model.Gender) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Country) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Country) %>
            <%: Html.ValidationMessageFor(model => model.Country) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Address) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Address) %>
            <%: Html.ValidationMessageFor(model => model.Address) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Phone_number) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.Phone_number) %>
            <%: Html.ValidationMessageFor(model => model.Phone_number) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>
</div>
</asp:Content>

