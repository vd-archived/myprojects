<#macro template page_title="" embed_script="" script_tags=[] css_tags=[] container_style="container">
<#global resource_path = "${webroot}themes/frontend/">
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<@link href="ico/favicon.ico" rel="shortcut icon"/>
<title>HT Syndication: ${page_title}</title>
<@links items=["css/bootstrap.css", "css/bootstrap-theme.css", "css/font-awesome.css", "css/main.css"] rel="stylesheet" type="text/css"/>
<@links items=css_tags rel="stylesheet" type="text/css"/>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<!-- NAVBAR
================================================== -->
<body>
<@frontend_menu/>
<div class="${container_style} body-container">
	<#nested>
	<@frontend_footer/>
</div>
<@frontend_footer_javascript/>
<@scripts items=script_tags/>
<#if embed_script?has_content>
<@custom_script src_content=embed_script/>
</#if>
</body>
</html> 
</#macro>

<#macro home_template page_title="" embed_script="" script_tags=[] css_tags=[]>
	<@template page_title=page_title embed_script=embed_script script_tags=script_tags css_tags=css_tags>
		<@design.frontend_slider/>
		<#nested>
	</@template>
</#macro>

<#macro page_template page_title="" embed_script="" script_tags=[] css_tags=[] container_style="container-fluid" detail_search=false>
	<@template page_title=page_title embed_script=embed_script script_tags=script_tags css_tags=css_tags container_style=container_style>
		<div class="row">
			<form action="${webroot}search" method="get">
				<@design.frontend_logo_search detail_search=detail_search/>
			</form>
			<div class="col-xs-12 col-sm-10 col-md-8 col-lg-8<#if !detail_search> col-sm-offset-1 col-md-offset-2 col-lg-offset-2</#if>">
				<#nested>
			</div>
		</div>
	</@template>
</#macro>

<#macro search_template page_title="" embed_script="" script_tags=[] css_tags=[] container_style="container-fluid" detail_search=true>
	<#assign js_tags = script_tags + [ "js/filter.js" ] />
	<@template page_title=page_title embed_script=embed_script script_tags=js_tags css_tags=css_tags container_style=container_style>
		<div class="row">
			<form action="${webroot}search" method="get">
				<@design.frontend_logo_search detail_search=detail_search/>
			</form>
			<div class="col-xs-12 col-sm-9 col-md-10 col-lg-10<#if !detail_search> col-sm-offset-3 col-md-offset-2 col-lg-offset-2</#if>">
				<#nested>
				<@design.bp_pagination/>
			</div>
		</div>
	</@template>
</#macro>

<#macro links items extra...>
<#list items as x>
<link href="${resource_path}${x}"<#list extra?keys as attr> ${attr}="${extra[attr]?html}"</#list>>
</#list>
</#macro>

<#macro link href extra...>
<link href="${resource_path}${href}"<#list extra?keys as attr> ${attr}="${extra[attr]?html}"</#list>>
</#macro>

<#macro scripts items extra...>
<#list items as x>
<script src="${resource_path}${x}"<#list extra?keys as attr> ${attr}="${extra[attr]?html}"</#list>></script>
</#list>
</#macro>

<#macro script src extra...>
<script src="${resource_path}${src}"<#list extra?keys as attr> ${attr}="${extra[attr]?html}"</#list>></script>
</#macro>

<#macro custom_script src_content extra...>
<script<#list extra?keys as attr> ${attr}="${extra[attr]?html}"</#list>>
${src_content}
</script>
</#macro>

<#macro bp_pagination>
<#if pagination?? && (pagination?size > 1 )>
<ul class="pagination">
	<#list pagination?keys as key> 
	  <li<#if page?? && key==page> class="active"</#if>><a href="${pagination[key]}">${key}</a></li>
	</#list> 
</ul>
</#if>
</#macro>

<#macro frontend_menu>
<div class="navbar-top-wrapper">
	<div class="navbar navbar-top-inverse navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-top-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand visible-xs" href="${webroot}#">TOP MENU</a>
			</div>
			<div class="navbar-top-collapse navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-left c-types">
					<li>
						<a href="${webroot}articles">ARTICLES</a>
					</li>
					<li>
						<a href="${webroot}photos">PHOTOS</a>
					</li>
					<li>
						<a href="${webroot}articles/exclusive">HTS <span class="mark-important">Exclusive</span></a>
					</li>
					<li>
						<a href="${webroot}articles/publication">PUBLICATIONS</a>
					</li>
				</ul>
				<ul class="nav navbar-nav navbar-right c-types">
					<!--li> <a href="#about">SIGN UP</a> </li -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							ABOUT US
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li>
								<a href="${webroot}pages/who-we-are">Who we are?</a>
							</li>
							<li>
								<a href="${webroot}pages/why-ht-syndication">Competitive Advantage</a>
							</li>
							<li>
								<a href="${webroot}pages/what-we-do">What we do!</a>
							</li>
							<li class="divider"></li>
							<li class="dropdown-header">Our Services</li>
							<li>
								<a href="${webroot}pages/news-aggregation">News Aggregation</a>
							</li>
							<li>
								<a href="${webroot}pages/image-syndication">Image Syndication</a>
							</li>
							<li>
								<a href="${webroot}pages/ht-mobile-content-services">Mobile Content Services</a>
							</li>
							<li>
								<a href="${webroot}pages/ht-archives">HT Archives</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="${webroot}pages/ht-news-services">HTNS <span class="mark-important">Live</span></a>
					</li>
					<li>
						<a href="${webroot}pages/contact-us">CONTACT US</a>
					</li>
					<li>
						<#if user?? && user.firstName??>
						<a href="${webroot}access/logout">SIGN OUT [${user.firstName}&nbsp;${user.lastName}]
						</a>
						<#else>
						<a href="${webroot}access/login">SIGN IN</a>
						</#if>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</#macro>

<#macro frontend_slider>
<div class="row">
	<div class="col-sm-12">
		<div class="logo-slider row">
			<div class="col-xs-12 col-sm-4 col-lg-3">
				<div class="logo">
					<a href="${webroot}">
						<img src="${resource_path}img/logo.png" class="img-rounded" />
					</a>
				</div>
			</div><!-- /.col-lg-6 -->
			<div class="col-xs-12 col-sm-8 col-lg-9">
				<div class="input-group search-btn-group">
					<input type="text" class="form-control input-lg search-text"
						placeholder="Your Keywords">
						<span class="input-group-btn">
							<select class="input input-lg search-select">
								<option>ARTICLE</option>
								<option value="IMAGE">IMAGE</option>
							</select>
						</span>
						<span class="input-group-btn">
							<button class="btn btn-default input-lg search-btn" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
				</div><!-- /input-group -->
			</div><!-- /.col-lg-6 -->
		</div><!-- /.row -->
	</div>

	<div class="col-sm-12 no-side-padding">
		<!-- Carousel ================================================== -->
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-footer-text">
				Articles, Images and Videos On Demand for every budget. |
				<a href="${webroot}#">See Plans &amp; Pricing</a>
			</div>
			<div class="carousel-inner">
				<div class="item active">
					<img src="${resource_path}img/slides/slide1.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Example headline.</h1>
								<p>
									Note: If you're viewing this page via a
									<code>file://</code>
									URL, the "next" and "previous" Glyphicon buttons on the left
									and right might not load/display properly due to web browser
									security rules.
								</p>
								<p>
									<a class="btn btn-lg btn-primary" href="${webroot}#" role="button">Sign up today
									</a>
								</p>
							</div>
						</div>
				</div>
				<div class="item">
					<img src="${resource_path}img/slides/slide2.jpg" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>Another example headline.</h1>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
									Donec id elit non mi porta gravida at eget metus. Nullam id
									dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="${webroot}#" role="button">Learn more
									</a>
								</p>
							</div>
						</div>
				</div>
				<div class="item">
					<img src="${resource_path}img/slides/slide3.jpg" alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>One more for good measure.</h1>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
									Donec id elit non mi porta gravida at eget metus. Nullam id
									dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="${webroot}#" role="button">Browse
										gallery</a>
								</p>
							</div>
						</div>
				</div>
				<div class="item">
					<img src="${resource_path}img/slides/slide4.jpg" alt="Fourth slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>One more for good measure.</h1>
								<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
									Donec id elit non mi porta gravida at eget metus. Nullam id
									dolor id nibh ultricies vehicula ut id elit.</p>
								<p>
									<a class="btn btn-lg btn-primary" href="${webroot}#" role="button">Browse
										gallery</a>
								</p>
							</div>
						</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /.carousel -->
	</div>
</div>
</#macro>

<#macro frontend_logo_search detail_search=false>
	<div class="logo-container">
		<div class="col-xs-12 col-sm-3 col-md-2 col-lg-2">
			<div class="logo">
				<a href="${webroot}">
					<img src="${resource_path}img/logo-transparent.png" class="img-rounded" />
				</a>
			</div>
		</div><!-- /.col-lg-6 -->
		<div class="col-xs-12 col-sm-8 col-md-6 col-lg-6">
			<div class="input-group">
				<input type="text" name="filterkeyword" class="form-control input-lg search-text" placeholder="Your Keywords" value="<#if filterkeyword??>${filterkeyword}</#if>" />
				<span class="input-group-btn">
					<select name="filtertype" class="input input-lg search-select">
						<option value="article" <#if filtertype?? && filtertype=="article">selected="true"</#if>>ARTICLE</option>
						<option value="image" <#if filtertype?? && filtertype=="image">selected="true"</#if>>IMAGE</option>
					</select>
				</span>
				<span class="input-group-btn">
					<button class="btn btn-default input-lg search-btn" type="submit">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div><!-- /input-group -->
		</div><!-- /.col-lg-6 -->
	</div>
	<#if detail_search >
		<div class="col-xs-12 col-sm-3 col-md-2">
			<#if filtertype?? && filtertype=="article">
				<div class="filter-box">
					<h1 class="filter-header">Filters</h1>
					<ul class="filter-list no-filter-box nav nav-pills nav-stacked">
						<li><a href="#"><div class="checkbox"><label><input type="checkbox" name="exclusive" value="yes" <#if exclusive?? && exclusive=="yes">checked=true</#if>> Our Exclusive</label></div></a></li>
					</ul>
				</div>
			</#if>
			<#if facetFields??>
				<#list facetFields as facetField>
					<#assign temp_collection = [] />
					<#if facetField.name?lower_case == "publication" && publication?? >
						<#assign temp_collection = publication />
					<#elseif facetField.name?lower_case == "source" && source?? >
						<#assign temp_collection = source />
					<#elseif facetField.name?lower_case == "category" && category?? >
						<#assign temp_collection = category />
					<#elseif facetField.name?lower_case == "byline" && byline?? >
						<#assign temp_collection = byline />
					<#elseif facetField.name?lower_case == "location" && location?? >
						<#assign temp_collection = location />
					<#elseif facetField.name?lower_case == "tags" && tags?? >
						<#assign temp_collection = tags />
					<#elseif facetField.name?lower_case == "event" && event?? >
						<#assign temp_collection = event />
					</#if>
				<div class="filter-box">
					<h1 class="filter-header">${facetField.name?cap_first}</h1>
					<ul class="filter-list nav nav-pills nav-stacked">
					<#if facetField?? && facetField.values??>
						<#list facetField.values as count>
							<#if !count.name?starts_with("HOME_SECTION_")>	
					    	<li>
								<a href="#">
									<div class="checkbox" data-toggle="tooltip" data-placement="top" title="<#if count.name?has_content>${count.name!"Others"}<#else>N/A</#if>">
										<label><input type="checkbox" name="${facetField.name}" value="<#if count.name?has_content>${count.name!""}</#if>"<#if temp_collection??>${temp_collection?seq_contains(count.name)?string(' checked="true"', "")}</#if> /> <#if count.name?has_content>${count.name!"N/A"}<#else>N/A</#if></label>
										<span class="badge pull-right">${count.count}</span>
									</div>
								</a>
							</li>
							</#if>
					    </#list>
					</#if> 
					</ul>
				</div>
				</#list>
			</#if>
		</div><!-- /.col-lg-6 -->
	</#if>
</#macro>

<#macro frontend_footer>
<footer class="row nav">
	<div class="col-sm-2">
		<h3 class="footer-title">HT Syndication</h3>
		<ul class="nav footer-nav">
			<li>
				<a href="${webroot}">Home</a>
			</li>
			<li>
				<a href="${webroot}pages/who-we-are">About Us</a>
			</li>
			<li>
				<a href="${webroot}pages/frequently-asked-questions">Frequently Asked Questions</a>
			</li>
			<li>
				<a href="${webroot}pages/subscribe">Subscribe/Renew</a>
			</li>
			<li>
				<a href="${webroot}pages/ht-archives">HT Archive</a>
			</li>
		</ul>
	</div>
	<div class="col-sm-3">
		<h3 class="footer-title">Contact &amp; Support</h3>
		<ul class="nav footer-nav">
			<li>
				<a href="${webroot}pages/contact-us">Contact Us</a>
			</li>
			<li class="divider">
				<hr class="nav-divider" />
			</li>
			<li>
				<a href="${webroot}#">Sales and Support</a>
			</li>
			<li>
				<address>
					<strong>HT Media Limited</strong>
					<br />
					Park Centra Building, 11th floor,
					<br />
					Sector-30, Delhi-Jaipur Highway,
					<br />
					Gurgaon - 122001
					<br />
					<abbr title="Sales Manager">
						<i class="fa fa-user"></i>
						:
					</abbr>
					Rajesh Sharma
					<br />
					<abbr title="Phone">
						<i class="fa fa-phone"></i>
						:
					</abbr>
					(+91) 99 101 55 993
					<br />
					<abbr title="E-Mail">
						<i class="fa fa-envelope"></i>
						:
					</abbr>
					<a href="mailto:#">rajesh.sharma@hindustantimes.com</a>
				</address>
			</li>
		</ul>
	</div>
	<div class="col-sm-5">
		<h3 class="footer-title text-center">Categories List</h3>
		<div class="row">
			<div class="col-sm-6">
				<ul class="nav footer-nav">
					<li>
						<a href="${webroot}pages/contact-us">Article</a>
					</li>
          			<li>
						<a href="${webroot}articles/Business %26 Finance">Business &amp; Finance</a>
					</li>
					<li>
						<a href="${webroot}articles/Education">Education</a>
					</li>
					<li>
						<a href="${webroot}articles/Entertainment">Entertainment</a>
					</li>
					<li>
						<a href="${webroot}articles/General News">General News</a>
					</li>
					<li>
						<a href="${webroot}articles/Government News">Government News</a>
					</li>
					<li>
						<a href="${webroot}articles/Health %26 Lifestyle">Health &amp; Lifestyle</a>
					</li>
					<li>
						<a href="${webroot}articles/NGO News">NGO News</a>
					</li>
					<li>
						<a href="${webroot}articles/Politics">Politics</a>
					</li>
					<li>
						<a href="${webroot}articles/Real Estate %26 Construction">Real Estate &amp; Construction</a>
					</li>
					<li>
						<a href="${webroot}articles/Sports">Sports</a>
					</li>
					<li>
						<a href="${webroot}articles/Technology">Technology</a>
					</li>
				</ul>
			</div>
			<div class="col-sm-6">
				<ul class="nav footer-nav">
					<li>
						<a href="${webroot}pages/contact-us">Image</a>
					</li>
					<li class="divider">
						<hr class="nav-divider" />
					</li>
					<li>
					  <a href="${webroot}images/News">News</a>
					</li>
					<li>
					  <a href="${webroot}images/Business">Business</a>
					</li>
					<li>
					  <a href="${webroot}images/Entertainment %26 Fashion">Entertainment &amp; Fashion</a>
					</li>
					<li>
					  <a href="${webroot}images/Festivals %26 Religion">Festivals &amp; Religion</a>
					</li>
					<li>
					  <a href="${webroot}images/History">History</a>
					</li>
					<li>
					  <a href="${webroot}images/Human Interest">Human Interest</a>
					</li>
					<li>
					  <a href="${webroot}images/International">International</a>
					</li>
					<li>
					  <a href="${webroot}images/Sports">Sports</a>
					</li>
					<li>
					  <a href="${webroot}images/Cricket">Cricket</a>
					</li>
					<li>
					  <a href="${webroot}images/Cartoon">Cartoon</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-sm-2">
		<h3 class="footer-title">Legal (Terms & Conditions)</h3>
		<ul class="nav footer-nav">
			<li>
				<a href="${webroot}#">Content licensing</a>
			</li>
			<li>
				<a href="${webroot}#">Website usage</a>
			</li>
			<li>
				<a href="${webroot}#">Privacy Policy</a>
			</li>
		</ul>
	</div>
</footer>
<footer class="row bottom-most-footer">
	<div class="col-sm-12">
		<p class="copyright text-center">Copyright
			(&copy;)
			2013 HT Syndication. All rights reserved
		</p>
	</div>
</footer>
</#macro>

<#macro frontend_footer_javascript>
	<!-- Bootstrap core JavaScript ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<@scripts items=["js/bootstrap.min.js", "js/docs.min.js"]/>
</#macro>

<#macro footer_purchase>
<p><strong>To purchase our web/mobile current/archival content or images as a single buy or as regular feed, please <a href="${webroot}contact-us" style="text-decoration: none; color: #0080FF;">Contact Us</a></strong></p>
</#macro>
<#macro footer_know_our_services>
<p><strong>To know more about our services, please <a href="${webroot}contact-us" style="text-decoration: none; color: #0080FF;">Contact Us</a></strong></p>
</#macro>

<#macro alternate_print index=1 first="" second="">
<#if (index % 2) == 0>
${first}
<#else>
${second}
</#if>
</#macro>