<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="js/jquery.skitter.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script>--%>
<%--    <script type="text/javascript" src="../../Scripts/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../../Scripts/jquery.animate-colors-min.js"></script>
     <script type="text/javascript" src="../../Scripts/jquery.skitter.js"></script>
    <script type="text/javascript" src="../../Scripts/hoverIntent.js"></script>
    <script type="text/javascript" src="../../Scripts/superfish.js"></script> 
    <script type="text/javascript" src="../../Scripts/supersubs.js"></script>
    <script type="text/javascript" src="../../Scripts/wow.min.js"></script>--%>
<%: Scripts.Render("~/Scripts/jquery-1.6.4.min.js") %>
<%: Scripts.Render("~/Scripts/jquery.easing.1.3.js") %>
<%: Scripts.Render("~/Scripts/jquery.animate-colors-min.js") %>
<%: Scripts.Render("~/Scripts/jquery.skitter.js") %>
<%: Scripts.Render("~/Scripts/hoverIntent.js") %>
<%: Scripts.Render("~/Scripts/superfish.js") %>
<%: Scripts.Render("~/Scripts/supersubs.js") %>
<%: Scripts.Render("~/Scripts/wow.min.js") %>

<script>
    new WOW().init();
</script>
    
<script type="text/javascript">
    jQuery(document).ready(function () {
        //Menu
        //jQuery("ul.sf-menu").supersubs({
        //    minWidth: 12,		// requires em unit.
        //    maxWidth: 27,		// requires em unit.
        //    extraWidth: 3	// extra width can ensure lines don't sometimes turn over due to slight browser differences in how they round-off values
        //    // due to slight rounding differences and font-family 
        //}).superfish();  // call supersubs first, then superfish, so that subs are 
        // not display:none when measuring. Call before initialising 
        // containing tabs for same reason.

        jQuery(document).ready(function () {
            jQuery(".box_skitter_large").skitter({
                animation: "random",
                interval: 3000,
                numbers: false,
                numbers_align: "right",
                hideTools: true,
                controls: false,
                focus: false,
                focus_position: true,
                width_label: '340px',
                enable_navigation_keys: true,
                progressbar: false
            });
        });

    });
</script>
        <%--<link href="../../Content/indextable.css" rel="stylesheet" type="text/css" media="all" />--%>
        <link href="<%: Url.Content("~/Content/indextable.css") %>" rel="stylesheet" type="text/css" media="all"/>
<%--        <link href="../../Content/style.css" rel="stylesheet" type="text/css" media="all" />--%>
        <link href="<%: Url.Content("~/Content/style.css") %>" rel="stylesheet" type="text/css" media="all"/>
        <%--<link type="text/css" href="../../Content/skitter.styles.css" media="all" rel="stylesheet" />--%>
        <link href="<%: Url.Content("~/Content/skitter.styles.css") %>" rel="stylesheet" type="text/css" media="all"/>


       <div id="header">
        	<div id="slider-container">
            	
                <div class="box_skitter box_skitter_large">
                    <ul>
                        <li>
                            <a><img src="<%: Url.Content("~/Images/dajiang.png") %>" alt="" /></a>
 <%--                           <div class="label_text">
                                <h3 class="colortext uppercase"> We are DJI</h3>
                                <span>DJI manufactures Unmanned aerial vehicle which includes Inspire.Osmo.Ronin and Phantom series.</span>
                            </div>--%>
                        </li>
                        <li>
                            <a><img src="<%: Url.Content("~/Images/xiaomi.png") %>" alt="" /></a>
                           <%-- <div class="label_text">
                                <h3 class="colortext uppercase">We are XiaoMi </h3>
                                <span>It has the advantage of cost control.</span>
                            </div>--%>
                        </li>
                        <li>
                            <a><img src="<%: Url.Content("~/Images/lingdu.png") %>" alt="" /></a>
                           <%-- <div class="label_text">
                                <h3 class="colortext uppercase">We are Zero.</h3>
                                <span>Zero manufactures Unmanned aerial vehicle which includes Xplorer. Xplorer V2.Xplorer Mini.Xplorer Xtrem and Xploree Gimbal Handheld series.</span>
                            </div>--%>
                        </li>
                    </ul>
                </div>
                <div id="shadow-img-slider"></div>
            </div><!-- end #slider-container -->
        </div><!-- end #header -->
        
        <div id="after-header">
        	<h1>Hello! WE are <span class="colortext">L&Z</span> and It is a <span class="colortext"> unmanned plane </span>Website<br/>Let’s Take a Tour and You’ll Love This tHeme.</h1>
        </div><!-- end #after-header -->
        
        <%--<div id="before-content" class="patternbox">
        	<div class="shadow"></div>
        	<div class="container940">
            	<ul class="customlist">
                	<li>
                        <img src="images/icons/icon1.png" alt="" class="alignleft" /><h3 class="valignmiddle">Flexible Templates </h3>
                        <span>Proin cursus purus vitae quam facilisis ac fermentum enim volutpat. Vestibulum non justo augue, sed mattis nisi. Donec id lectus erat, ac imperdiet nisl. </span>
                    </li>
                	<li>
                        <img src="images/icons/icon2.png" alt="" class="alignleft" /><h3 class="valignmiddle">Clean and Simple</h3>
                        <span>Proin cursus purus vitae quam facilisis ac fermentum enim volutpat. Vestibulum non justo augue, sed mattis nisi. Donec id lectus erat, ac imperdiet nisl. </span>
                    </li>
                	<li class="last">
                        <img src="images/icons/icon3.png" alt="" class="alignleft" /><h3 class="valignmiddle">Great Support</h3>
                        <span>Proin cursus purus vitae quam facilisis ac fermentum enim volutpat. Vestibulum non justo augue, sed mattis nisi. Donec id lectus erat, ac imperdiet nisl. </span>
                    </li>
                </ul>
                <div class="clear"></div><!-- clear float -->
            </div><!-- end container940 -->
        </div><!-- end #before-content -->
        --%>
		<div id="content">
        	<div id="main">
                <h2 class="title_pattern uppercase"><span>Some Introductions</span></h2>
                <ul id="recentpost">
                     <li>
                        <img  src="<%: Url.Content("~/Images/ixiaomi.jpg") %>" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">XiaoMi</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.dji.com/cn" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Xiao Mi UAV is published in the evening of 25 May 2016 By Lei Jun using the way of live video.It once again set a price limit. </span>
                    </li>
                    <li>
                        <img src="<%: Url.Content("~/Images/izero1.jpg") %>" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">Zero</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.mi.com/miuav/" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Shenzhen Zero UAV Tech.Co.,LTD (Zero) is co-founded by Shenzhen Rapoo Techonlogy Co., Limited and Beijing Zero UAV Tech. Zero Tech(Xiro) focus R&D and first class manufacture, recently release consumer level smart drone, and it’s one of the world class on the drone production.</span>
                    </li>
                    <li>
                        <img src="<%: Url.Content("~/Images/idji.jpg") %>" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">DJI</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.xirodrone.com" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Dà-Jiāng Innovations Science and Technology Co., Ltd  is a Chinese technology company founded in 2006 by Frank Wang and headquartered in Shenzhen, Guangdong. </span>
                    </li>
                    
                   
                    <li class="last">
                        <img src="<%: Url.Content("~/Images/i.jpg") %>"  alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">Implementations</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://bbs.dji.com/portal.php" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Unmanned aerial vehicles (UAV) are often used for aerial photography and videography,gimbals, flight platforms, cameras, propulsion systems, camera stabilizers, and flight controllers.</span>
                    </li>
                </ul>
                <div class="clear"></div><!-- clear float -->
            </div><!-- end #main -->
		</div><!-- end #content -->
        
        <%--<div id="after-content" class="patternbox">
        	<div class="container940">
            	<a href="#" class="button large">Buy Now !</a>
            	<h2>Started Using the <span class="colortext">Magnum</span> Theme for Your Next <span class="colortext">Project</span> ? Available.</h2>
                <div class="clear"></div><!-- clear float -->
            </div><!-- end container940 -->
        </div><!-- end #after-content -->--%>
        
    </asp:Content>



<%--<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Home Page.</h1>
                <h2><%: ViewBag.Message %></h2>
            </hgroup>
            <p>
                To learn more about ASP.NET MVC visit
                <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET MVC.
                If you have any questions about ASP.NET MVC visit
                <a href="http://forums.asp.net/1146.aspx/1?MVC" title="ASP.NET MVC Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            ASP.NET MVC gives you a powerful, patterns-based way to build dynamic websites that
            enables a clean separation of concerns and that gives you full control over markup
            for enjoyable, agile development. ASP.NET MVC includes many features that enable
            fast, TDD-friendly development for creating sophisticated applications that use
            the latest web standards.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245151">Learn more…</a>
        </li>

        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245153">Learn more…</a>
        </li>

        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features
            and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245157">Learn more…</a>
        </li>
    </ol>
</asp:Content>--%>
