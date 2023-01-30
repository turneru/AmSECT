<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<!--- Navigation Include--->
<!--#include file="includes/cert_navigation.ascx"-->
<main role="main">
<div class="cert_title">	
	<h1>IBBM Certification</h1>	
</div>	
<div id="home_body_content">
	<div class="container">
		<div id="CertQuickLinks">
			<div class="row no-margin">
				<div class="four columns center">
					<a href="/Certification/PBMT-Exam"><img src="<%= SkinPath %>images/certification/icon_pbmt.png" data-hover="<%= SkinPath %>images/certification/icon_pbmt_hover.png" class="icon_img img-responsive" alt="Perioperative Blood Management Technologist" /></a>
				</div>
				<div class="four columns center">
					<a href="/Certification/PBMS-Exam"><img src="<%= SkinPath %>images/certification/icon_pbms.png" data-hover="<%= SkinPath %>images/certification/icon_pbms_hover.png" class="icon_img img-responsive" alt="Patient Blood Management Specialist Certification" /></a>
				</div>
				<div class="four columns center">
					<a href="/Certification/CES-A-Exam"><img src="<%= SkinPath %>images/certification/icon_cesa.png" data-hover="<%= SkinPath %>images/certification/icon_cesa_hover.png" class="icon_img img-responsive" alt="Adult Certified ECMO Specialist™" /></a>
				</div>
			</div>
		</div>
		<div id="CertDates">
			<h1 class="home_title"><span>2023 Certification</span> DATES</h1>
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="ContentPane" runat="Server"></div>
				</div>
			</div>
		</div>
		<div id="Recertification">
			<h1 class="home_title"><span>Get Recertified with</span> AmSECT</h1>
			<div class="row no-margin">
				<div class="six columns">
					<div id="RecertificationPane" runat="Server"></div>
				</div>
				<div class="six columns right">
					<img src="<%= SkinPath %>images/certification/recertification.png"class="img-responsive" alt="Stay Informed" />
				</div>
			</div>
		</div>
		<div id="FooterBanner">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="ADPane" runat="Server"></div>
				</div>
			</div>
		</div>	
    </div>
</div>
</main>

<script>
var mobileCertLink = "<li class='selected'><a href='/Certification' tabindex='0'><div>Certification</div></a></li>"
$(document).ready(function() {
	setTimeout(function() {
        $(".slicknav_nav li.home_link").after(mobileCertLink);
		$(".slicknav_nav li.item").addClass("subnav_pad");
    }, 500);
});			
</script>	

<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->

<script>
	
$(function () {
    $('.icon_img').each(function () {
        $(this).data('original', this.src);
    }).mouseenter(function () {
        $(this).fadeOut(100, function(){
        	$(this).attr('src', $(this).data('hover'));
        	$(this).fadeIn(100);
        });
    }).mouseleave(function () {
        $(this).fadeOut(100, function(){
        	$(this).attr('src', $(this).data('original'));
        	$(this).fadeIn(100);
        });
    });
});	
	
$(".calendar_item").click(function(){
    window.location = $(this).attr("data-href");
   return false;
});   	
	
</script>