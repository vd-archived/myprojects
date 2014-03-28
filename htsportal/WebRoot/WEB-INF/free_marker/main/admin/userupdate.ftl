<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update User: HT SYNDICATION</title>
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
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">Update User</div>
									    		<div class="divtable" style="width: 600px;">
										    		<@s.form action="userupdate">
										    		<@s.actionerror/>
										    		<@s.textfield name="uname" label="User ID/Name" readonly="true" />
										    		<@s.textfield name="ufirstName" label="First Name" maxlength="50" />
										    		<@s.textfield name="ulastName" label="Last Name" maxlength="50" />
										    		<@s.textfield name="uemail" label="E-Mail" maxlength="150" />
										    		<@s.select name="ustatus" label="Status" list=statusList listKey="key" listValue="value" />
										    		<@s.select name="urole" label="Role" list=roleList listKey="key" listValue="value" />

													<@s.submit value="Update User" align="center"/>
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
	$("#htusermenu").attr("class","selected");
});
</script>
</body>	
</html> 