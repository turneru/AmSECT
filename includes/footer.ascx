<footer role="contentinfo">
    <div id="footer" class="clearfix">
        <div class="container">
			<div class="row">
				<div class="three columns address">
					<div class="social">
						<a href="https://www.facebook.com/amsect" class="social_media" target="_blank"><i class="fab fa-facebook-f fa-fw"></i></a>
						<a href="https://www.linkedin.com/company/amsect---american-society-of-extracorporeal-technology/" class="social_media" target="_blank"><i class="fab fa-linkedin-in fa-fw"></i></a>
						<a href="https://twitter.com/amsectperfusion" class="social_media" target="_blank"><i class="fab fa-twitter fa-fw"></i></a>
						<a href="https://www.instagram.com/amsectperfusion/" class="social_media" target="_blank"><i class="fab fa-instagram fa-fw"></i></a>
					</div>
					
					<span style="font-weight: 900;">AmSECT National Headquarters</span><br />
					<span style="padding-top: 8px;display: block;">330 N Wabash Ave, Suite 2000<br />
					Chicago, IL 60611<br />
					PHONE 312.321.5156<br />
					FAX 312.673.6656<br /></span>
					<span style="padding-top: 8px;display: block;"><a href="mailto:amsect@amsect.org" class="footer_email">amsect@amsect.org</a></span>
				</div>
				<div class="six columns center">
					<div class="footer_logo">
						<a href="/"><img src="<%= SkinPath %>images/footer_logo.png" alt="AmSECT" /></a>
					</div>
					
					<div class="footer_title">
						American Society of<br />Extracorporeal Technology
					</div>
					
					<div class="copyright">
						&copy; <span id="year"></span> AmSECT&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/Contact-Us" class="footer_email">Contact Us</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/Privacy-Policy" class="footer_email">Privacy Policy</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/Conflict-of-Interest" class="footer_email">Conflict of Interest</a>
					</div>
					
				</div>
				<div class="three columns quicklinks right">
					<a href="/Members/Job-Opportunities" class="quicklink">AmSECT Job Board</a><br /><br />
					<a href="/Certification" class="quicklink">Certification</a><br /><br />
					<a href="/Publications/AmSECToday" class="quicklink">AmSECToday</a><br /><br />
					<a href="/About/About-Us" class="quicklink">About Us</a>
				</div>
			</div>
            <div class="row no-margin">
                <div class="twelve columns center">
                    <% If Request.IsAuthenticated Then%>
                		<a href="/home/ctl/logoff" class="hidden_link">Logoff</a>
            		<% Else%>
               			<a href="/login.aspx?mode=host" class="hidden_link">Login</a>
            		<% End If%>
                </div>
            </div>
        </div>
    </div>
</footer>
<div style="display: none"><dnn:SEARCH ID="dnnSearch2" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" /></div>
	
<script>
$(function() { 
  $('#navigation .nav #dnnMenu .topLevel').slicknav({
  allowParentLinks:true
});
});
	
var currentYear = (new Date()).getFullYear();
$(document).ready(function() {
	$("#year").text(currentYear);
});			
	
$( "#dnnMenu ul li.haschild" ).hover(
	function() {
		$( ".subLevel" ).css('display','');
  	}
);	
	
$( window ).scroll(function() {
  $( "#dnnMenu .subLevel" ).css('display','none');
});
	

$(document).ready(function() {	
	$(".ms-container .ms-slide").each(function(index) {
	  	$(this).addClass("slide-" + (index + 1));
		//$(this).attr('data-slide', (index + 1));
	});
	
	$(".ms-slide.slide-2, .ms-slide.slide-3, .ms-slide.slide-4").addClass('slide_visible');
	
	$('.ms-nav-next, .ms-nav-prev').click(function() {
		
		$('.ms-container .ms-slide').filter(function() {
				return $(this).css('z-index') == 1;
			}).each(function() {
				$(this).removeClass("slide_visible"); 
		});

		$('.ms-container .ms-slide').filter(function() {
				return $(this).css('z-index') == 2;
			}).each(function() {
				$(this).addClass("slide_visible"); 
		});	

	});	
	
});	
	

//About	
$(".35_leftside").html( "<p>The mission of AmSECT is to foster improved patient care and safety by providing for the continuing education and professional needs of the extracorporeal circulation technology community.</p>" );
	
//Members
$(".44_leftside").html( "<p>Become an AmSECT member to access top education, advocacy and research, and a global community of peers.</p>");
	
//Events & Education 	
$(".53_leftside").html( "<p>AmSECT is proud to offer learning opportunities to advance professional development within the community.</p>");
	
//Certification: 	
$(".61_leftside").html( "<p>Explore your certification options with AmSECT and the International Board of Blood Management.</p>");	
	
//Publications
$(".69_leftside").html( "<p>Read the latest industry insights and research in AmSECT's prestigious publications.</p>");	
	
//Policy & Practice Resources
$(".81_leftside").html( "<p>AmSECT offers vital resources to help advance the profession and support perfusion practice.</p>");	
	
	
$(document).euCookieLawPopup().init({
  popupPosition : 'bottom',
  colorStyle : 'default',
  compactStyle : false,
  popupTitle : 'This website is using cookies',
  popupText : 'This website uses cookies to ensure you get the best experience on our website. To learn more about cookies and how we use them, please view our <a href="/Privacy-Policy">privacy policy</a>.',
  buttonContinueTitle : 'Agree',
  buttonLearnmoreTitle : '',
  buttonLearnmoreOpenInNewWindow : true,
  agreementExpiresInDays : 30,
  autoAcceptCookiePolicy : false,
  htmlMarkup : null
});
	
if (window.location.href.indexOf("login.aspx?") > -1) {
    $("#QuickLinks, #CTA .home_title, #CTA .six.columns.right, #Events, #Testimonial, #FooterBanner").hide();
    $("#home_body_content").css("margin", "100px 0px");
}  	

$(document).ready(function(){
	var titleHeight = $("#page_title .title").height();
	console.log(titleHeight);
	
	if ($(window).width() < 769) {
        if ( titleHeight > 110) {
			$("#page_title .title").css("font-size", "36px");
			$("#page_title .title").css("line-height", "36px");
			$("#page_title .title").parents("#page_title").css("margin-top", "-122px");
		}  
	}
	else {
       
	}
});			
		
var mobileHomeLink = "<li class='home_link'><a href='/' tabindex='0'><div>Home</div></a></li>"
$(document).ready(function() {
	$(".slicknav_nav").prepend(mobileHomeLink);
});			
		
	
</script>
	
<script language="vb" runat="server">
	Public Function GetReturnUrl() As String
		If Request.Cookies("lastURL") Is Nothing Then
			Dim aCookie As New HttpCookie("lastURL")
			aCookie.Value = HttpContext.Current.Request.Url.ToString()
			aCookie.Expires = DateTime.Now.AddDays(1)
			Response.Cookies.Add(aCookie)
		Else 
		    Response.Cookies("lastURL").Value = HttpContext.Current.Request.Url.ToString()
			Response.Cookies("lastURL").Expires = DateTime.Now.AddDays(1)
		End If
		
		
		Dim returnUrl As String = "?RedirectURL=" & HttpContext.Current.Request.Url.ToString()		
		Return returnUrl
	End Function
	
</script>