<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Login: HT SYNDICATION</title>
	<#include "../default/admin/head.ftl">
</head>
<body>
<div id="container">
	<div id="main" role="main">
		<div id="fixed_icons">
			<a href="http://www.facebook.com/HTSyndication" id="facebook" title="Facebook Profile" target="_blank"></a><a href="http://twitter.com/HTSyndication" id="twitter" title="Follow us on Twitter" target="_blank"></a><a href="http://linkedin.com/groups/HT-Syndication-4876166" id="linkedin" title="Linkedin Profile" target="_blank"></a>
		</div>
		<header>	
		    <div class="header1">
				<div class="logo-img">
					<img src="${webroot}admin/images/logo.png" />
				</div>
				<div class="httopmenu">
					<div class="httopmenugroup">
						<div class="htleftmenu">
							<ul class="navmenu">
							</ul>
						</div>
					</div>
				</div>
				<div class="cleared reset-box"></div>
				<div class="spot-bg-child"></div>
			</div>
		</header>
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body" style="">
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">Publisher Login</div>
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