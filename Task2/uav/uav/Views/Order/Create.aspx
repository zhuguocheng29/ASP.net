<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<uav.Models.Order>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--<script src="../../Scripts/jquery-1.8.2.js" type="text/javascript"></script>--%>
<%--<script src="../../Scripts/jquery-ui-1.8.24.js"></script>
<script src="../../Scripts/jquery.ui.datepicker.js"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-1.8.2.js") %>
<%: Scripts.Render("~/Scripts/jquery-ui-1.8.24.js") %>
<%: Scripts.Render("~/Scripts/jquery.ui.datepicker.js") %>

<%--<link href="../../Content/ValidationError.css" rel="stylesheet" type="text/css" />
<link href="../../Content/common.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/common.css") %>" rel="stylesheet" type="text/css"/>
<link href="<%: Url.Content("~/Content/ValidationError.css") %>" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $(function () {
            $("#buy_date").datepicker();
        });
    </script>
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Create Order</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">You can create a new order,please enter valid values.</p>
            
           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
<div class="editcontainer">
<% using (Html.BeginForm()) { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
       <%-- <legend>Order</legend>--%>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.brand) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.brand) %>
            <%: Html.ValidationMessageFor(model => model.brand) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.price) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.price) %>
            <%: Html.ValidationMessageFor(model => model.price) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.buy_date) %>
        </div>
        <div class="bcontainer">
            <%: Html.EditorFor(model => model.buy_date) %>
            <%: Html.ValidationMessageFor(model => model.buy_date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.uid, "User") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("uid", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.uid) %>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Create Order</li>
</asp:Content>
