<jsp:directive.page import="java.io.File"/><!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=8" /><![endif]--> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    
	<title>Under Construction- HT Syndication</title>
	<meta name="description" content="HT Syndication is India's largest content aggregator">
	<meta name="keywords" content="HT,content,aggregators,syndication">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="robots" content="index, follow" />

	<link rel="shortcut icon" href="${webroot}favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${webroot}admin/css/skins/sky/style.css">
    <link rel="stylesheet" href="${webroot}admin/css/light/general.css">
	<!--[if IE 9]><link rel="stylesheet" href="${webroot}admin/css/light/style.ie9.css"/><![endif]--> 
    <!--[if IE 8]><link rel="stylesheet" href="${webroot}admin/css/light/style.ie8.css"/><![endif]-->
	<!--[if IE 7]><link rel="stylesheet" href="${webroot}admin/css/light/style.ie7.css"/><![endif]-->
	<!--[if IE 6]><link rel="stylesheet" href="${webroot}admin/css/light/style.ie6.css"/><![endif]-->
	
	<script src="${webroot}admin/js/libs/modernizr-2.0.6.min.js"></script>
</head>

<body>
<#if !(user?? && user.firstName??)>
<!--begin Top section-->
	<!-- Add the 'open' class to top-section to keep it open-->
	<section class="top-section">
			<div class="inner">
				<p>Are you a member? sign in or take a minute to <a href="#">sign up</a></p>
				<div class="csbutton-dark show-top cancel">Cancel</div>
				<form id="authenticateuser" name="authenticateuser" action="${webroot}access/authenticateuser.action" method="post" autocomplete="off">
						<label id="username_label">Username</label>
						<input id="top-username" title="Please enter your username" type="text" name="userName" class="top-input" size="15" />
						<label id="password_label">Password</label>
						<input id="top-password" title="Please enter your password" type="password" name="password" class="top-input" size="14" />
						<input type="submit" name="submit" class="csbutton-dark small submit" id="submit_button" value="Login" />
				</form>
			</div>
	</section>
<!--end Top section-->
</#if>
<div id="container">
<div id="main" role="main">
    <div class="cleared reset-box"></div>
	<header>	
	<!--begin top main section -->
	<section class="top-main">
	<div class="top-overlay">
		<div id="top-date"></div>
			<div class="top-contact">
			<#if user?? && user.firstName??>
			   <a href="logout">Logout [${user.firstName}&nbsp;${user.lastName}]</a>
			<#else>
				<div id="top-member" class="show-top top-member"  title="Member access" >Member login</div>
			</#if>
		</div>
	</section>

    <div class="header1">
	
	<!--begin logo -->
	<div class="logo-img">
		<a href="${webroot}"><img src="${webroot}admin/images/logo.png" alt="logo" /></a>	</div>
	
<!--begin bar nav section -->	
	<section class="bar nav">
	<div class="nav-outer">
	<div class="nav-wrapper">
	<div class="nav-inner">
	<#include "../../menus/menu.ftl">
</div>
</div>
</div>
</section>


<!--begin header section -->
  </div>    
  </header>
	
    <div class="cleared reset-box"></div>
	
	
	<!--begin spotlight section-->
				<section class="spot-bg child">

				</section>
				
	<!--begin content  layout section -->
	<div class="box sheet">
		<div class="box-body sheet-body">
			<div class="layout-wrapper">
				<div class="content-layout">
					<div class="content-layout-row">
					<!--begin left sidebar section -->
					<!--aside class="layout-cell sidebar1">
						<div class="cleared"></div>
					</aside-->
					<!--begin main content section -->
					<div class="layout-cell content">
						<div class="box post">
							<div class="box-body post-body">
								<div class="thumbcontainer">
								
									<#list imageNameList as x>
										 <div class="thumbimage"><img border="0" src="${webroot}admin/images/imagesCollection/${x.imageName}" style="height: 80px;width: 120px;"> </div> 
									</#list>
									
									
								</div>
								<div class="cleared"></div>
								<div class="cleared"></div>
							</div>
						</div>
						<div class="box post"></div>
						<!--begin content  layout section -->
						<div class="box sheet">
							<div class="content-layout">
							<!--begin footer section -->
							<footer>
								<div class="footer">
									<p class="page-footer" style="margin-bottom: -28px;margin-top: -28px;">Copyright (c) 2012 htsyndication.com. All rights reserved.</p>
								</div>
							</footer>
						</div><!--! end of #main -->
</div><!--! end of #container -->

	<!--js-->  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="${webroot}admin/js/jquery.js"><\/script>')</script>
	<script defer src="${webroot}admin/js/mylibs/script.js"></script>
</body>	
</html> 