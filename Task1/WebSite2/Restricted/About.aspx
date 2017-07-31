<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Restricted_About" MasterPageFile="~/MasterPage.master"%>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
      <li class="active">About US</li>       
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">About us</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The authors of the website.</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

           <%-- <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>--%>

			</div>
        </div>
<link href="styles/about.css" rel="stylesheet" type="text/css" />
  <div class="allcontainer animated wow slideInUp" data-wow-delay=".5s">
        <div class="leftcontainer">
    <asp:Image ID="a1" ImageUrl="~/Restricted/images/content/zhu.png" runat="server" />
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
    <asp:Image ID="a2" ImageUrl="~/Restricted/images/content/emily.png" runat="server" />
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

   <asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
      
            <%--<asp:HyperLink NavigateUrl="~/Restricted/About.aspx" runat="server"><span class="span1">About</span></asp:HyperLink>--%>
        <li>
            <a href="DisplayCode.aspx?filename=About.aspx&other=FAQ.aspx&addition=History.aspx" target="_blank"><img src="images/content/aboutus.jpg" /> </a>
        </li>
        
   </asp:Content>
