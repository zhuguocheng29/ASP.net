<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">About us</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The authors of the website.</p>

           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
<%--<link href="../../Content/about.css" rel="stylesheet" type="text/css" />--%>
<link href="<%: Url.Content("~/Content/about.css") %>" rel="stylesheet" type="text/css"/>
  <div class="allcontainer animated wow slideInUp" data-wow-delay=".5s">
        <div class="leftcontainer">
    <asp:Image ID="a1" ImageUrl="~/Images/zhu.png" runat="server" />
            <div class="leftsub">
             Guocheng Zhu
            </div>
            <%--<div class="leftsub2">
               Calender &nbsp;&nbsp;
               Email &nbsp;&nbsp;
               Login Out&nbsp;&nbsp;
               Documentation&nbsp;&nbsp;
               History&nbsp;&nbsp;
               FAQ
            </div>--%>
            </div>
        <div class="rightcontainer">
    <asp:Image ID="a2" ImageUrl="~/Images/emily.png" runat="server" />
            <div class="rightsub">
                Hanxiao Liu
            </div>
           <%-- <div class="rightsub2">
              UI &nbsp;&nbsp;
              Login &nbsp;&nbsp;
              Register&nbsp;&nbsp;
              Site Map&nbsp;&nbsp;
              About US&nbsp;&nbsp;
            </div>--%>
            </div>
    </div>
   <%--     <span class="bottomcontainer">
            Guocheng Zhu:Calender &nbsp;&nbsp;
               Email &nbsp;&nbsp;
               Login Out&nbsp;&nbsp;
               Documentation&nbsp;&nbsp;
               History&nbsp;&nbsp;
               FAQ<br />
            Hanxiao Liu:UI &nbsp;&nbsp;
              Login &nbsp;&nbsp;
              Register&nbsp;&nbsp;
              Site Map&nbsp;&nbsp;
              About US&nbsp;&nbsp;
        </span>--%>
</form>
     
</asp:Content>

<%--<asp:Content ID="aboutContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>About.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <article>
        <p>
            Use this area to provide additional information.
        </p>

        <p>
            Use this area to provide additional information.
        </p>

        <p>
            Use this area to provide additional information.
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>
            Use this area to provide additional information.
        </p>
        <ul>
            <li><%: Html.ActionLink("Home", "Index", "Home") %></li>
            <li><%: Html.ActionLink("About", "About", "Home") %></li>
            <li><%: Html.ActionLink("Contact", "Contact", "Home") %></li>
        </ul>
    </aside>
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="server">
    <li class="active">About US</li>
</asp:Content>
