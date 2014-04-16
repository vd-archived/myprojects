<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Show all source details: HT SYNDICATION</title>
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
											<h1 class="postheader">Users</h1>
											 <div class="box">
											  	<@s.actionerror/>
											  	<@s.form action="userdelete" theme="css_xhtml">
											  	<table border="0" cellspacing="2" cellpadding="2" class="reportviewtable" style="width:800px;">
												  <tr class="reportviewhead">
												    <th>User Name</th>
												    <th>First Name</th>
												    <th>Last Name</th>
												    <th>E-Mail</th>
												    <th>Status</th>
												    <th>Role</th>
												    <th>&nbsp;</th>
												  </tr>
												  <#if users??>
													<#list users as user>
														<tr>
														<td>${user.username}</td>
													    <td>${user.firstName}</td>
													    <td>${user.lastName!''}</td>
													    <td>${user.email!''}</td>
													    <td>${statusList(user.status?short)}</td>
													    <td>${roleList(user.role?short)}</td>
													    <td><a href="userupdate?uname=${user.username}"><img src="${webroot}admin/images/edit.png" /></a></td>
													    </tr>
													</#list>
												  </#if>
												  <tr class="reportviewhead">
												  	<td colspan="7">&nbsp;</td>
												  </tr>
												  <tr class="reportviewhead">
												  	<th colspan="7"><div align="center"><a href="usercreate" style="color:black;">New User</a></div></th>
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
	$("#htusermenu").attr("class","selected");
});
</script>
</body>	
</html> 