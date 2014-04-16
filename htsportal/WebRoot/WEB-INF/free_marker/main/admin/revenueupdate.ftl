<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update Revenue: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<script language="JavaScript" type="text/javascript" src="${webroot}admin/js/jquery-ui.js"></script>
	<link rel="stylesheet" href="${webroot}admin/css/ui-lightness/jquery-ui-custom.css" />
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
											<div class="show-sub-title">Update Revenue</div>
									    		<div class="divtable" style="width: 600px;">
										    	<@s.form action="revenueupdate">
										    		<@s.actionerror/>
										    		<@s.hidden name="id" />
										    		<@s.select name="publication" label="Publication" list=pubList listKey="id" listValue="name" />
										    		<@s.select name="client" label="Client" list=clientList listKey="id" listValue="name" />
										    		<@s.textfield name="amount" label="Amount (INR)" />
										    		<@s.textfield name="date" label="Date" readonly="true" />
										    		<@s.select name="status" label="Status" list=statusList listKey="key" listValue="value" />
													<@s.submit value="Update Client" align="center"/>
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
	$("#htrevenuemenu").attr("class","selected");
	$("#revenueupdate_date").datepicker({dateFormat: "dd/mm/yy"});
});
</script>
</body>	
</html> 