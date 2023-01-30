<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" Src="~/Admin/Skins/jQuery.ascx" %>

<dnn:META ID="META1" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<!-- FONT
–––––––––––––––––––––––––––––––––––––––––––––––––– -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&family=Red+Hat+Display:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500&display=swap" rel="stylesheet">
<script src="//kit.fontawesome.com/9a1fb9d613.js" crossorigin="anonymous"></script>
	
<!-- JS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<dnn:DnnJsInclude runat="server" FilePath="js/StandardMenu.js" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="~/Resources/Shared/Scripts/jquery/jquery.hoverIntent.min.js" />
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.slicknav.js" PathNameAlias="SkinPath" />

<!-- CSS
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<dnn:DnnCssInclude runat="server" FilePath="css/normalize.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/grid.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slicknav.css?v=1.0" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/animations.css?v=1.0" PathNameAlias="SkinPath" />
		
<script>
	var version_date=new Date();
	
	document.write('<link href="<%= SkinPath %>css/skeleton.css?v=1.1'+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
	
	document.write('<link href="<%= SkinPath %>css/layout.css?v=1'+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
	
	document.write('<link href="<%= SkinPath %>css/StandardMenu.css?v=1'+ version_date.getMonth() + '.' + version_date.getDate() + '-' + Math.floor(Math.random() * 100) +'" type="text/css" rel="stylesheet"/>');
</script>
	

<!--- Rotator Stuff
Info on how to use http://kenwheeler.github.io/slick/
-----------------------------------------------------------   --->
<dnn:DnnJsInclude runat="server" FilePath="js/slick.js" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick.css" PathNameAlias="SkinPath" />
<dnn:DnnCssInclude runat="server" FilePath="css/slick-theme.css" PathNameAlias="SkinPath" />

<!--- FancyBox Stuff
Info on how to use http://fancyapps.com/fancybox/3/
----------------------------------------- --->
<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/3.4.0/jquery.fancybox.min.css" />
	
<!--- GDPR Popup
-------------------------------------------------- -->
<dnn:DnnCssInclude runat="server" FilePath="css/jquery-eu-cookie-law-popup.css" PathNameAlias="SkinPath" />
<dnn:DnnJsInclude runat="server" FilePath="js/jquery-eu-cookie-law-popup.js" PathNameAlias="SkinPath" />		

	
<!-- Favicon
–––––––––––––––––––––––––––––––––––––––––––––––––– -->
<link rel="icon" type="image/png" href="<%= SkinPath %>images/favicon.png">
<header role="banner">
	<div id="video_area" class="desktop center">
		
		<div class="video_logo">
			<img src="<%= SkinPath %>images/homepage/video_logo.png" class="img-responsive">
		</div>
		<video autoplay="" muted="" loop="" id="hero_video">
			<source src="<%= SkinPath %>AmSECT_hero.mp4" type="video/mp4">
			Your browser does not support HTML5 video.
		</video>
		<div class="video_overlay">&nbsp;</div>
	</div>
	<div id="home_arrow" class="desktop">
		<a class="scroll" href="#home_body_content">
			<i class="fas fa-angle-down pulsate-fwd"></i>
		</a>
	</div>
	<div id="mobile_hero" class="mobile">
		<img src="<%= SkinPath %>images/poster.jpg" class="img-responsive" /> 
	</div>
    <div id="home_header">
        <div class="container">
            <div class="row">
                <div class="twevle columns right header_link_wrapper">
					<a href="/Members/Join-AmSECT" class="header_links">Join</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="/Members/Job-Opportunities" class="header_links">Job Opportunities</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<% If Request.IsAuthenticated Then%>
						<a href="https://my.amsect.org/my-profile" class="header_links">My Profile</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="https://my.amsect.org/account/logout.aspx" class="header_links">Logout</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="https://my.amsect.org/shopping-cart" class="header_links">Cart</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            		<% Else%>
                		<a href="/login.aspx?appctx=/NavToAuth.aspx<%=GetReturnUrl()%>" class="header_links">Login</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            		<% End If%>
					
					<a href="/Search" class="header_links">Search</a>
				</div>
            </div>
        </div>
    </div>
</header>	