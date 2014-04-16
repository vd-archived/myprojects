<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Manage Event: HT SYNDICATION</title>
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
										<div style="display: block; padding:40px;">
											<#if eventVO??>
												<div class="show-sub-title" style="margin-bottom: 20px;">Update Event '${eventVO.name}'</div>
										    	<div class="divtable" style="width: 600px;">
											    	<@s.form action="eventsave">
											    		<@s.actionerror/>
											    		<@s.hidden name="id" value="${eventVO.id}" />
											    		<@s.textfield name="name" label="Name" value="${eventVO.name}" />
														<@s.textarea rows=5 cols=40 name="details" label="Details" value="${eventVO.details}" />
														<@s.select name="status" label="Status" list={"1":"Enable", "0":"Disable"} listKey="key" listValue="value" value="eventVO.status" />
														<@s.submit value="Update Event" align="center"/>
													</@s.form>
											  	</div>
											<#else>
												<div class="show-sub-title" style="margin-bottom: 20px;">Create Event</div>
										    	<div class="divtable" style="width: 600px;">
											    	<@s.form action="eventsave">
											    		<@s.actionerror/>
											    		<@s.textfield name="name" label="Name"/>
														<@s.textarea rows=5 cols=40 name="details" label="Details" />
														<@s.select name="status" label="Status" list={"1":"Enable", "0":"Disable"} listKey="key" listValue="value" />
														<@s.submit value="Create Event" align="center"/>
													</@s.form>
											  	</div>
											</#if>
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
	$("#htsourcemenu").attr("class","selected");
});
</script>
</body>	
</html> 