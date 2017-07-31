<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="Restricted_Sitemap"  MasterPageFile="~/MasterPage.master"%>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
    <li class="active">SiteMap Page</li>
</asp:Content>
<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
       <link rel="stylesheet" type="text/css" href="css/jquery-ui.css"/>
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<!-- animation-effect -->
<link href="css/animate.min.css" rel="stylesheet"/> 
<%--<script src="js/wow.min.js"></script>--%>
<link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/sitemap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/comm.css" rel="stylesheet" type="text/css" />
    <link href="styles/animate.min.css" rel="stylesheet"/> 
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
<%--    <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><asp:HyperLink NavigateUrl="~/index.aspx" runat="server"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</asp:HyperLink></li>
				<li class="active">SiteMap Page</li>
                <asp:HyperLink NavigateUrl="~/Restricted/Sitemap.aspx" runat="server" CssClass="loginout">Login out</asp:HyperLink>
			</ol>
            
		</div>
	</div>--%>
     <form id="form1" runat="server">
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"> Site Map</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This site map is the catalog of our website. You can jump to relevant page by clicking</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
    <div class="sitemap animated wow slideInUp" data-wow-delay="'.5s">

    
    <div>
      <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
      <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True"/>
    </div>
         </div>
    </form>
       
</asp:Content>

   <asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <li>
            <a href="DisplayCode.aspx?filename=Sitemap.aspx" target="_blank"><img src="images/content/showsitemap.jpg" /></a>
        </li>
   </asp:Content>
