<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Astrology: HT SYNDICATION</title>
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
										<#if astros?? && (astros?size > 0)>
											<div class="post-inner article">
												<div class="box_header" style="margin-left:33px;margin-right:30px;margin-bottom:20px;margin-top:20px;">
													<h2 class="postheader" style="padding-left: 0px; vertical-align: bottom;"><a href="http://www.ganeshaspeaks.com/" rel="nofollow" target="_blank"><img src="${webroot}/images/ganeshaspeaks_logo.png" /> <span style="display: inline; vertical-align: bottom;">GaneshaSpeaks.com</span></a></h2>
													<div style="text-align: justify;">GaneshaSpeaks.com is India's number one and world's third best astrology portal with an accuracy rate of 85 to 90%. It was launched in 2003 by Mr.&nbsp;Bejan Daruwalla, a veteran astrologer of international repute, and attracts over 5 million visitors to its web and telecom facilities. More than three hundred astrologers from five call centers provides 24 x 7 guidance and remedial solutions on career, business, finance, relationships, etc in ten Indian languages. It is the world's first astrology portal to publish books in print and online formats on Amazon’s Kindle and as applications on iOS and Android platforms. GaneshaSpeaks.com stands for accuracy, reliability and trust and works towards making a positive difference to the lives of its customers.</div>
												</div>
											</div>
											<#list astros as astro>
												<div class="post-inner article boxwithshadow astrobox">
													<h2 class="postheader head">
														<img class="icon pushleft" src="${astro.thumburl}" />
														<span class="pushleft">${astro.title}</span><span class="pushleft runoninfo" style="font-weight:normal; font-size: 18px;">&#32;[${astro.timestamp}]</span>
														<div class="pushright">
															<div class="astromenu">
																<ul class="nav">
																	<li id="today" class="active">Today</li>
																	<li id="thisweek">This Week</li>
																	<li id="thismonth">This Month</li>
																	<li id="thisyear">This Year</li>
																</ul>
															</div>
														</div>
														&nbsp;
													</h2>
													<div class="blog postcontent">
														<div class="articlepara">
															<div class="today astropara">${astro.today}</div>
															<div class="thisweek astropara hidesection">${astro.thisweek}</div>
															<div class="thismonth astropara hidesection">${astro.thismonth}</div>
															<div class="thisyear astropara hidesection">${astro.thisyear}</div>
														</div>
													</div>
													<br clear="all" />
												</div>
											</#list>
											<div class="post-inner article blog postcontent box copyrightinfo copyrightcompany" style="margin-top: 24px;">
												To purchase the reprint of this article or to get the feed, please <a href="${webroot}subscription" style="font-size:13px;color:#22AEEE;">Click Here</a>
											</div>
										<#else>
											<div align="center" class="bigerror">Sorry! No astrology feed found...</div>
										</#if>
										<div class="cleared"></div>
										<br />
										<div class="cleared"></div>
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
<script>
$(document).ready(function($) {
	$("#htarticlemenu").attr("class","selected");
	
	$("div.astromenu > ul.nav > li").click(function(){
		$(this).parent().find("li.active").removeClass("active");
		$(this).addClass("active");
		$(this).parent().parent().parent().parent().parent().find(".articlepara div.astropara").slideUp();
		$(this).parent().parent().parent().parent().parent().find(".articlepara div." + $(this).attr('id')).slideToggle();
	});
});
</script>
</body>	
</html> 