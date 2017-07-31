<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">Documentation</li>
</asp:Content>
<asp:Content ID="contactTitle" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form6" runat="server">
<%--     <link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="<%: Url.Content("~/Content/bootstrap.css") %>" rel="stylesheet" type="text/css"/ media="all"/>

<%--   <link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="<%: Url.Content("~/Content/style1.css") %>" rel="stylesheet" type="text/css"/ media="all"/>
<%--    <link href="styles/doc.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="<%: Url.Content("~/Content/doc.css") %>" rel="stylesheet" type="text/css"/ media="all"/>
<%--             <link href="styles/indextable.css" rel="stylesheet" type="text/css" media="all" />--%>
<link href="<%: Url.Content("~/Content/indextable.css") %>" rel="stylesheet" type="text/css"/ media="all"/>
<%--  <link href="styles/animate.min.css" rel="stylesheet"/> --%>
<link href="<%: Url.Content("~/Content/animate.min.css") %>" rel="stylesheet" type="text/css"/ media="all"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<script src="js/wow.min.js"></script>
         <script>
             new WOW().init();
</script>
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"> Documentation</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This page will show the structure and contents of L&Z</p>
			</div>
        </div>

    <div class="allcontainer animated wow slideInUp" data-wow-delay=".5s">
        <div class="contentcontainer">
            <h2 class="font1">Contents</h2>
                <br />
            <ul>
                <li>
                    <a href="#s1">1.Assignment information</a>
                </li>
                <li>
                    <a href="#s2">2.Image Details</a>
                </li>
                <li>
                    <a href="#s3">3.Additional MVC functionality</a>
                </li>
                <li>
                    <a href="#s4">4.jQuery Functionality</a>
                </li>

            </ul>
        </div>
        <div class="acontainer">
            <h2 id="s1" class="font1">1. Assignment information</h2>
                <br />
            <table>
                <tr>
                    <td>
                        Name & ID:
                    </td>
                    <td>
                        Hanxiao Liu 27315649
                        <br />
                        Guocheng Zhu 27315789
                    </td>
                </tr>
                <tr>
                    <td>
                        Unit's name:
                    </td>
                    <td>
                        Enterprise and internet applications development T3 2016
                    </td>
                </tr>
                <tr>
                    <td>
                        Unit provider:
                    </td>
                    <td>
                        Monash University, The Caulfied School of Information Technology
                    </td>
                </tr>
                <tr>
                    <td>
                        Assignment number
                    </td>
                    <td>
                        FIT5192 
                    </td>
                </tr>
                <tr>
                    <td>
                        Date of submission:
                    </td>
                    <td>
                        26 Aug, 2016
                    </td>
                </tr>
                <tr>
                    <td>
                        Lecturer/Tutor's name
                    </td>
                    <td>
                        Jue(Grace)Xie/Yuncen Hua
                    </td>
                </tr>
                <tr>
                    <td>
                         Email links to the author
                    </td>
                    <td>
                        <a href="mailto:hliu196@student.monash.edu">hliu196@student.monash.edu</a>
                        <br />
                        <a href="mailto:gzhu14@student.monash.edu">gzhu14@student.monash.edu</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        Link to assignment specification
                    </td>
                    <td>
                        <a href="<%: Url.Content("~/FIT5192-A2-2016_Specification.pdf") %>">FIT5192-A2-2016_Specification.pdf</a>
                    </td>
                </tr>
            </table>

            <h2 id="s2" class="font1">2. Image details</h2>
            <br />
            <p>Please refer to <%: Html.ActionLink("Acknowledgement", "Acknowledgement", "Home") %>.</p>
            <br />
            <h2 id="s3" class="font1">3. Additional MVC functionality</h2>
            <br />
            <p>We have implemented <%: Html.ActionLink("Order search", "Search", "Order") %> based on username using MVC custom Template.</p>
            <br />
            <h2 id="s4" class="font1">4. jQuery functionality</h2>
            <br />
            <ul>
                <li>
                    Home Page Slide (Using SuperSildes): <%: Html.ActionLink("Home page", "Index", "Home") %>.
                </li>
                <li>
                    Date Picker (Using jQuery UI): <%: Html.ActionLink("Add", "Create", "Order") %> / <%: Html.ActionLink("Edit", "Edit", "Order") %>
                </li>
                <li>
                    Table Formatting, including row highlighting and alternating row colouring (Using jQuery):  <%: Html.ActionLink("UserTable", "Index", "Users") %> / <%: Html.ActionLink("OrderTable", "Index", "Order") %>
                </li>
            </ul>
        </div>

</div>

</form>
</asp:Content>

<%--<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Contact.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>
    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>425.555.0100</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Support@example.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@example.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            One Microsoft Way<br />
            Redmond, WA 98052-6399
        </p>
    </section>
</asp:Content>--%>