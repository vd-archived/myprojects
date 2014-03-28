<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Welcome "${user.firstName}&nbsp;${user.lastName}" to HT Syndication Portal</title>
	<#include "../../default/admin/head.ftl">
</head>
<body>
<div id="container">
	<div id="main" role="main">
	    <#include "../../default/admin/adminheader.ftl">
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body" style="min-height: 530px;">
										<div class="cleared"></div>
										<div style="min-height:150px;"></div>
										<div class="cleared"></div>
										<div align="center">
											<h1 class="postheader">
												Welcome "${user.firstName}&nbsp;${user.lastName}" to HT Syndication Portal
											</h1>
											<div class="cleared"></div>
										</div>
										<div class="cleared"></div>
										<div class="cleared"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cleared"></div>
					<#include "../../default/admin/admin_footer_copyright.ftl">
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function($) {
	$("#hthomemenu").attr("class","selected");
});
</script>
</body>	
</html> 