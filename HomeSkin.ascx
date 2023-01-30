<!--- Header Include--->
<!--#include file="includes/header_home.ascx"-->

<!--- Navigation Include--->
<!--#include file="includes/navigation.ascx"-->
<main role="main">
<div id="home_body_content">
	<div class="container">
		<div id="QuickLinks">
			<div class="row no-margin">
				<div class="three columns center">
					<a href="/Members/Student-Corner"><img src="<%= SkinPath %>images/homepage/icon_become.png" data-hover="<%= SkinPath %>images/homepage/icon_become_hover.png?v=1.0" class="icon_img img-responsive" alt="Become a Perfusionist" /></a>
				</div>
				<div class="three columns center">
					<a href="https://connect.amsect.org/" target="_blank"><img src="<%= SkinPath %>images/homepage/icon_connect.png" data-hover="<%= SkinPath %>images/homepage/icon_connect_hover.png?v=1.0" class="icon_img img-responsive" alt="Connect with Others" /></a>
				</div>
				<div class="three columns center">
					<a href="/Volunteer"><img src="<%= SkinPath %>images/homepage/icon_get_involved.png" data-hover="<%= SkinPath %>images/homepage/icon_get_involved_hover.png?v=1.0" class="icon_img img-responsive" alt="Get Involved with AmSECT" /></a>
				</div>
				<div class="three columns center">
					<a href="/Members/Join-AmSECT"><img src="<%= SkinPath %>images/homepage/icon_membership.png" data-hover="<%= SkinPath %>images/homepage/icon_membership_hover.png?v=1.0" class="icon_img img-responsive" alt="AmSECT Membership" /></a>
				</div>
			</div>
		</div>
		<div id="CTA">
			<h1 class="home_title"><span>Stay informed with</span> AmSECT</h1>
			<div class="row no-margin">
				<div class="six columns">
					<div id="ContentPane" runat="Server"></div>
				</div>
				<div class="six columns right">
					<img src="<%= SkinPath %>images/homepage/stay_informed.png"class="img-responsive" alt="Stay Informed" />
				</div>
			</div>
		</div>
	</div>	
	<div id="Events">
		<h1 class="home_title"><span>Stay Up-To-Date on</span> AmSECT EVENTS</h1>
		<div class="row no-margin">
			<div class="twelve columns">
				<div id="EventPane" runat="Server"></div>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="Testimonial">
			<h1 class="home_title"><span>How Our Members</span> VALUE AmSECT</h1>
			<div class="row no-margin">
				<div class="twelve columns center">
					<div id="TestimonialPane" runat="Server"></div>
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
	
$(".ms-slide").click(function(){
    window.location = $(this).attr("data-href");
   return false;
});   	
	
 $(".scroll").click(function(event){
         event.preventDefault();
         //calculate destination place
         var dest=0;
         if($(this.hash).offset().top > $(document).height()-$(window).height()){
              dest=$(document).height()-$(window).height();
         }else{
              dest=$(this.hash).offset().top;
         }
         //go to destination
         $('html,body').animate({scrollTop:dest}, 1000,'swing');
     });    	
		

</script>