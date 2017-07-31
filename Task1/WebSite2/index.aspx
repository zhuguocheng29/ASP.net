<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" MasterPageFile="~/MasterPage.master"%>

    <asp:Content ID="mainContent"
         ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="js/jquery.skitter.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script> 
<script type="text/javascript" src="js/superfish.js"></script> 
<script type="text/javascript" src="js/supersubs.js"></script>
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
        <link href="styles/indextable.css" rel="stylesheet" type="text/css" media="all" />
        
       <div id="header">
        	<div id="slider-container">
            	
                <div class="box_skitter box_skitter_large">
                    <ul>
                        <li>
                            <a href=""><img src="images/content/dajiang.png" alt="" /></a>
                            <div class="label_text">
                                <h3 class="colortext uppercase"> We are DJI</h3>
                                <span>DJI manufactures Unmanned aerial vehicle which includes Inspire.Osmo.Ronin and Phantom series.</span>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="images/content/xiaomi.png" alt="" /></a>
                            <div class="label_text">
                                <h3 class="colortext uppercase">We are XiaoMi </h3>
                                <span>It has the advantage of cost control.</span>
                            </div>
                        </li>
                        <li>
                            <a href=""><img src="images/content/lingdu.png" alt="" /></a>
                            <div class="label_text">
                                <h3 class="colortext uppercase">We are Zero.</h3>
                                <span>Zero manufactures Unmanned aerial vehicle which includes Xplorer. Xplorer V2.Xplorer Mini.Xplorer Xtrem and Xploree Gimbal Handheld series.</span>
                            </div>
                        </li>
                    </ul>
                </div>
                <div id="shadow-img-slider"></div>
            </div><!-- end #slider-container -->
        </div><!-- end #header -->
        
        <div id="after-header">
        	<h1>Hello! WE are <span class="colortext">L&Z</span> and It is a <span class="colortext"> unmanned plane </span>Website<br/>Let’s Take a Tour and You’ll Love This tHeme.</h1>
           <form id="form_index" runat="server">
               <div class="after-sub">
                if you want to change the theme, please <asp:LinkButton ID="change_background_1" runat="server" OnClick="change_background" >Click</asp:LinkButton> here.
          </div>
             </form>
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
                        <img src="images/content/ixiaomi.jpg" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">XiaoMi</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.dji.com/cn" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Xiao Mi UAV is published in the evening of 25 May 2016 By Lei Jun using the way of live video.It once again set a price limit. </span>
                    </li>
                    <li>
                        <img src="images/content/izero1.jpg" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">Zero</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.mi.com/miuav/" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Shenzhen Zero UAV Tech.Co.,LTD (Zero) is co-founded by Shenzhen Rapoo Techonlogy Co., Limited and Beijing Zero UAV Tech. Zero Tech(Xiro) focus R&D and first class manufacture, recently release consumer level smart drone, and it’s one of the world class on the drone production.</span>
                    </li>
                    <li>
                        <img src="images/content/idji.jpg" alt="" class="frame" />
                        <span class="shadowimg220"></span>
                        <div class="entry-date">DJI</div>
                        <h5 class="colortext"><asp:HyperLink NavigateUrl="http://www.xirodrone.com" runat="server">Click to View.</asp:HyperLink></h5>
                        <span>Dà-Jiāng Innovations Science and Technology Co., Ltd  is a Chinese technology company founded in 2006 by Frank Wang and headquartered in Shenzhen, Guangdong. </span>
                    </li>
                    
                   
                    <li class="last">
                        <img src="images/content/i.jpg" alt="" class="frame" />
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
   
       <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

           <li>
            <%--<asp:Button ID="homepage_button1" runat="server" OnClick="JumpToAdRotator" /> --%>
            <div class="showcontainer">
            <a href="Restricted/DisplayCode.aspx?filename=index.aspx&other=js/AdRotator.js" target="_blank"><img src="images/content/Adrotar.jpg"/></a>
            </div>
            <a href="Restricted/DisplayCode.aspx?filename=MasterPage.master" target="_blank"><img src="images/content/showmaster.jpg" /></a>
           <%-- <form runat="server">
            <asp:ImageButton ID="im" runat="server" ImageUrl="~/images/content/showmaster.jpg"  OnClick="im_Click" />
                </form>--%>
        </li>       
   </asp:Content>
    
