<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Login : HT SYNDICATION</title>
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
									<div class="box-body post-body" style="">
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">User Login</div>
											<div class="divtable" style="width: 600px;">
										    	<div style="float:left; display:block; width: 300px;">
											    	<@s.form action="authenticateuser">
														<@s.textfield name="userName" label="*Username"/>
														<@s.password name="password" label="*Password"/>
														<@s.submit value="Login" align="center"/>
													</@s.form>
												</div> 
												<div style="height: 130px; display:block;">
													<div class="errorMessage"><span class="redError">*<span> Required Fields</div>
													<@s.actionerror/>
								   					<@s.fielderror/>
												</div>
										  	</div>
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
</div>
</body>	
</html> 