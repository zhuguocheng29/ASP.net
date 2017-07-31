<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Documentation.aspx.cs" Inherits="Restricted_Documentation" MasterPageFile="~/MasterPage.master" %>
  <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
      <li class="active"> Documentation Page</li>   
</asp:Content>

<asp:Content ID="registerContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <form id="form6" runat="server">
     <link href="styles/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
   <link href="styles/style1.css" rel="stylesheet" type="text/css" media="all" />
    <link href="styles/doc.css" rel="stylesheet" type="text/css" media="all" />
             <link href="styles/indextable.css" rel="stylesheet" type="text/css" media="all" />
  <link href="styles/animate.min.css" rel="stylesheet"/> 
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
<link href='http://fonts.useso.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>
<script src="js/wow.min.js"></script>
<script>
    new WOW().init();
</script>
 <%--   <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><asp:HyperLink NavigateUrl="~/index.aspx" runat="server"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</asp:HyperLink></li>
				<li class="active">Documentation Page</li>
			</ol>
		</div>
	</div>--%>
    <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s"> Documentation</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">This page will show the structure and contents of L&Z</p>
            <p class="est animated wow zoomIn" data-wow-delay=".6s">User:&nbsp;<asp:Label ID="du_label" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lb_email" runat="server" OnClick="log_out" Font-Size="10px">Logout</asp:LinkButton></p>

			</div>
        </div>
   <div class="animated wow slideInUp" data-wow-delay=".5s">
        <div class="contentcontainer">
        <h2 class="font1">Contents</h2>
            <br />
        <ul class="document_ul_font">
            <li>
                <a href="#s1">Assignment information</a>
            </li>
            <li>
                <a href="#s2">Web site design</a>
            </li>
            <ul class="document_ul">
                <li> <a href="#s2_1">Web page structure</a></li>
                <li> <a href="#s2_2">Home page</a></li>
                <li> <a href="#s2_0">Login</a></li>
                <li> <a href="#s2_3">Register</a></li>
                <ul class="document_ul">
                    <li><a href="#s2_3_1">See users</a></li>
                    <li><a href="#s2_3_2">Search users</a></li>
                </ul>
                <li> <a href="#s2_4">Documentation</a></li>
                <li> <a href="#s2_5">Site map</a></li>
                <li> <a href="#s2_6">Email</a></li>
                <li> <a href="#s2_7">Calender</a></li>
                <li> <a href="#s2_8">About</a></li>
                <ul class="document_ul">
                    <li><a href="#s2_8_1">History</a></li>
                    <li><a href="#s2_8_2">FAQ</a></li>
                </ul>
            </ul>
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
                    Jue(Grace)Xie/Yunchen Hua
                </td>
            </tr>
            <tr>
                <td>
                    Division of Labour
                </td>
                <td>
                    Hanxiao Liu: The main web page design, Master page, Home page, Login system, Site map and About us.
                    <br />
                    Guocheng Zhu: The part web page design, Register, Documentation, Calendar, Send email, Acknowledgement and Display codes. 
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
                    <a href="../FIT5192-A2-2016_Specification.pdf">FIT5192-A2-2016_Specification.pdf</a>
                </td>
            </tr>
        </table>
        </div>
        <br />
        <div class="acontainer">
        <h2 id="s2" class="font1">2. Web site design</h2>
        </div>
        <div class="wcontainer">
        <h3 id="s2_1" class="font2">2.1 Web page structure</h3>
            <br />
        <asp:Image ID="image1" runat="server" ImageUrl="~/images/content/asp.net.png" Width="800px" />
        </div>
        <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_2" class="font2">2.2 Home page</h3>
            <br />
        <asp:Image ID="image2" runat="server" ImageUrl="~/Restricted/images/content/homeShot.png"  Width="800px"/>
        </div>
        <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_0" class="font2">2.3 Login</h3>
            <br />
        <asp:Image ID="image3" runat="server" ImageUrl="~/Restricted/images/content/loginShot.png"  Width="800px"/>
        </div>

               <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_3" class="font2">2.4 Register</h3>
            <br />
        <asp:Image ID="image4" runat="server" ImageUrl="~/Restricted/images/content/registerShot.png"  Width="800px"/>
        </div>


                      <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_3_1" class="font2">2.4.1 See users</h3>
            <br />
        <asp:Image ID="image11" runat="server" ImageUrl="~/Restricted/images/content/seeUsers.png"  Width="800px"/>
        </div>

                             <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_3_2" class="font2">2.4.2 Search users</h3>
            <br />
        <asp:Image ID="image12" runat="server" ImageUrl="~/Restricted/images/content/searchUser.png"  Width="800px"/>
        </div>



                      <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_4" class="font2">2.5 Documentation</h3>
            <br />
        <h4>This web page is documentation web page.</h4>
        </div>


                      <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_5" class="font2">2.6 Site map</h3>
            <br />
        <asp:Image ID="image5" runat="server" ImageUrl="~/Restricted/images/content/sitemapShot.png"  Width="800px"/>
        </div>

                             <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_6" class="font2">2.7 Email</h3>
            <br />
        <asp:Image ID="image6" runat="server" ImageUrl="~/Restricted/images/content/emailShot.png"  Width="800px"/>
        </div>

                                    <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_7" class="font2">2.8 Calender</h3>
            <br />
        <asp:Image ID="image7" runat="server" ImageUrl="~/Restricted/images/content/calenderShot.png"  Width="800px"/>
        </div>


                                           <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_8" class="font2">2.9 About</h3>
            <br />
        <asp:Image ID="image8" runat="server" ImageUrl="~/Restricted/images/content/aboutShot.png"  Width="800px"/>
        </div>


       
                                           <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_8_1" class="font2">2.8.1 History</h3>
            <br />
        <asp:Image ID="image9" runat="server" ImageUrl="~/Restricted/images/content/historyShot.png"  Width="800px"/>
        </div>


                                                  <br />
        <br />
        <div class="wcontainer">
        <h3 id="s2_8_2" class="font2">2.8.2 FAQ</h3>
            <br />
        <asp:Image ID="image10" runat="server" ImageUrl="~/Restricted/images/content/faqShot.png"  Width="800px"/>
        </div>


       </div>
    </form>
</asp:Content>

   <asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <li>
            <a href="DisplayCode.aspx?filename=css/displaycode.css" target="_blank"><img src="images/content/showcss.jpg" /></a><br />
            <a href="DisplayCode.aspx?filename=SkinFile.skin" target="_blank"><img src="images/content/showskin.jpg" /></a>
        </li>
   </asp:Content>