<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Show all client details: HT SYNDICATION</title>
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
									<div class="box-body post-body" style="min-height: 580px;">
										<div align="center">
											<h1 class="postheader">Clients</h1>
											 <div class="box">
											  	<@s.actionerror/>
											  	<@s.form action="clientdelete" theme="css_xhtml">
											  	<table border="0" cellspacing="2" cellpadding="2" class="reportviewtable" style="width:800px;">
												  <tr class="reportviewhead">
												    <th>Name</th>
												    <th>Details</th>
												    <th>Interval</th>
												    <th>Status</th>
												    <th>&nbsp;</th>
												  </tr>
												  <#if clients??>
													<#list clients as client>
														<tr>
														<td>${client.name}</td>
													    <td>${client.details}</td>
													    <td>${timeIntervalList(client.revenueinterval?short)}</td>
													    <td>${statusList(client.status?short)}</td>
													    <td><a href="clientupdate?id=${client.id}"><img src="${webroot}admin/images/edit.png" /></a></td>
													    </tr>
													</#list>
												  </#if>
												  <tr class="reportviewhead">
												  	<td colspan="6">&nbsp;</td>
												  </tr>
												  <tr class="reportviewhead">
												  	<th colspan="6"><div align="center"><a href="clientcreate" style="color:black;">New Client</a></div></th>
												  </tr>
												</table>
												</@s.form>
											  </div>
										</div>
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
	$("#htclientmenu").attr("class","selected");
});
</script>
</body>	
</html> 