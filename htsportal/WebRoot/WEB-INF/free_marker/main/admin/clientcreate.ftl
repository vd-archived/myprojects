<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Create Client: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<style>
		textarea {
			width: 300px;
			height: 100px;
		}
	</style>
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
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">Create Client</div>
									    		<div class="divtable" style="width: 600px;">
										    		<@s.form action="clientcreate">
										    		<@s.actionerror/>
										    		<@s.textfield name="name" label="Name" />
										    		<@s.textarea name="details" label="*Details" />
										    		<@s.select name="timeinterval" label="Revenue Interval" list=timeIntervalList listKey="key" listValue="value" />
										    		<@s.select name="status" label="Status" list=statusList listKey="key" listValue="value" />
										    		<@s.select name="pubs" label="Publications" list=pubList listKey="id" listValue="name" />
													<tr>
														<td class="tdLabel">&nbsp;</td>
														<td><input type="button" name="addanotherpub" id="addanotherpub" onClick="$(this).parent().parent().before($('#clientcreate_pubs').parent().parent().clone());" value="Add Another Publication" /></td>
													</tr>
													<@s.submit value="Create Client" align="center"/>
												</@s.form>
										  	</div>
										</div>
										<div class="cleared"></div>
										<br />
										<br />
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
	$("#htclientmenu").attr("class","selected");
});
</script>
</body>	
</html> 