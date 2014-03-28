<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>HNS: HT SYNDICATION</title>
	<#include "../default/admin/head.ftl">
</head>
<body>
<div id="container">
	<div id="main" role="main">
	    <#include "../default/admin/header.ftl">
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body">
										<div style="float: left; display: block; width: 100%;">
											<div class="slide-text">
												<div class="box_header" style="margin-bottom: 10px; display:block;"><h2 class="postheader" style="padding-left: 0px;">HT News Service <span style="color: Red; text-decoration: blink;">Live</span></h2></div>
												<div class="show-text">A newly launched news service from HT Media Ltd aimed at regional & international newspapers, where publications can directly select ready to print live exclusive stories for their respective print publications. HT News Service will provide live access to exclusive News stories, Images, Columns and Analysis from more than 300 reporters, 60 photo journalists and 30 specialist writers spread across the nation and abroad.</div>
												<div class="show-text">If you are subscriber, please <a href="/newsfeed/" target="_blank" style="text-decoration: none; font-size: 12px; color: #0080FF;">click here</a> to view latest news.</div>
												<div class="show-text">For further details please <a href="${webroot}contactus" style="text-decoration: none; color: #0080FF;">contact us</a></div>
											</div>
										</div>
										<div class="cleared"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="cleared"></div>
				<#include "../default/admin/footer_copyright.ftl">
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function($) {
	$("#hthns").attr("class","selected");
});
</script>
</body>	
</html> 