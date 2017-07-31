<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acknowledgement.aspx.cs" Inherits="Acknowledgement" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderb" runat="Server">
      <li class="active">Acknowledgement Page</li>       
</asp:Content>
<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <link href="styles/ackn.css" rel="stylesheet" type="text/css" media="all" />
        <div class="login">
    <div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Acknowledgement</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">The resource we have used.</p>
			</div>
        </div>
        <div class="ackContainer animated wow slideInUp" data-wow-delay=".5s">
            
            <div class="asubckContainer">
            <h3>Inspiration</h3>
                 <div class="asubckContainer2">
            <p>Our design is inspired by those sites:</p>
               
            <ul>
                <li>The home page design: <a href="http://www.sucaihuo.com">sucaihuo</a></li>
                <li>Input elements design: <a href="http://getbootstrap.com/2.3.2/">Bootstrap</a></li>
                <li>HTML technology: <a href="http://www.w3school.com.cn/html/">w3school</a> </li>
                <li>student's assignment:<a href="http://120.27.202.84/12345678">student's assignment </a></li>
            </ul>
                    </div>
                </div>
            <div class="asubckContainer">
            <h3>Images for home page</h3>
             <div class="asubckContainer2">
            <ul>
                <li>DJI: <a href="http://www.dji.com/cn">http://www.dji.com/cn</a></li>
                <li>Zero: <a href="http://www.xirodrone.com/">http://www.xirodrone.com/</a></li>
                <li>Xiaomi: <a href="http://www.mi.com/miuav/">http://www.mi.com/miuav/</a></li>
            </ul>
                </div>
                </div>
            <div class="asubckContainer">
            <h3>Code Source</h3>
                 <div class="asubckContainer2">
            <ul>
                <li>Tutorial: <a href="http://moodle.vle.monash.edu/my/">http://moodle.vle.monash.edu/my/</a></li>
                <li>CNBLOGS: <a href="http://www.cnblogs.com/zopgxf/p/4757743.html">http://www.cnblogs.com/zopgxf/p/4757743.html</a></li>
                <li>CSDN: <a href="http://blog.csdn.net/woshixuye/article/details/7224390">http://blog.csdn.net/woshixuye/article/details/7224390</a></li>
                <li>Bootstrap: <a href="http://getbootstrap.com/2.3.2/">http://getbootstrap.com/2.3.2/</a></li>
            </ul>
                     </div>
                </div>
            <div class="asubckContainer">
            <h3>Website Icon</h3>
             <div class="asubckContainer2">
            <ul>
                <li>The website icon L&Z is developed by ourselves.</li>
            </ul>
                 </div>
                </div>
        </div>
    </form>
</asp:Content>