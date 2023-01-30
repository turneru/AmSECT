<!--- Header Include--->
<!--#include file="includes/header.ascx"-->

<!--- Navigation Include--->
<!--#include file="includes/navigation.ascx"-->
<main role="main">	
<div id="page_title">
	<div class="container">
		<div class="row no-margin">
			<div class="title" style="text-transform: none;"><%=PortalSettings.ActiveTab.Title %></div>
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
	<div id="current_issue">
		<div class="container">
			<div class="row no-margin">
				<div class="twelve columns">
					<div id="CurrentIssuePane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="two_col_rb">
		<div class="row">
			<div class="six columns">
				<div class="left_col">
					<div class="row no-margin">
						<div class="twelve columns">
							<div id="ContributorsPane" runat="Server"></div>
						</div>
					</div>
				</div>	
			</div>
			<div class="six columns amsect_themes">
				<div class="right_col">
					<div class="row no-margin">
						<div class="twelve columns" style="padding: 25px 45px 0px;">
							<div id="ThemesPane" runat="Server"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="archives">
		<div class="container">
			<div class="row">
				<div class="twelve columns">
					<div id="ArchivesPane" runat="Server"></div>
				</div>
			</div>
		</div>	
	</div>
	<div id="FooterBanner" style="margin-top: 125px;">
		<div class="container">
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