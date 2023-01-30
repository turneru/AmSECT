<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<!--- Navigation Include--->
<!--#include file="includes/cert_navigation.ascx"-->
<style>
	#page_title {
		margin-top: -195px;
		margin-bottom: 195px;
	}
	
	@media only screen and (max-width: 768px) {
		#page_title {
			margin-top: -125px;
			margin-bottom: 100px;
		}
	}
	
	@media only screen and (max-width: 479px) {
		#page_title {
			margin-bottom: 0px;
			text-shadow: 2px 2px 20px rgb(0 0 0 / 50%);
		}
	}
</style>

<main role="main">	
<div id="page_title">
	<div class="container">
		<div class="row no-margin">
			<div class="title"><%=PortalSettings.ActiveTab.TabName %></div>
		</div>
	</div>
</div>
<div id="body_content">
	<div class="container">
		<div class="row">
			<div class="twelve columns">
				<div id="ContentPane" runat="Server"></div>
			</div>
		</div>
    </div>
</div>
</main>
	
<script>
var mobileCertLink = "<li class=''><a href='/Certification' tabindex='0'><div>Certification</div></a></li>"
$(document).ready(function() {
	setTimeout(function() {
        $(".slicknav_nav li.home_link").after(mobileCertLink);
		$(".slicknav_nav li.item").addClass("subnav_pad");
    }, 500);
});			
</script>		
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->
	
