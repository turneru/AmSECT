<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<!--- Navigation Include--->
<!--#include file="includes/navigation.ascx"-->
<main role="main">	
<div id="page_title" class="page_<%=PortalSettings.ActiveTab.TabID %>">
	<div class="container">
		<div class="row no-margin">
			<div class="title"><%=PortalSettings.ActiveTab.Title %></div>
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
<!--- Footer Include--->
<!--#include file="includes/footer.ascx"-->