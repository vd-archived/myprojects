<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>
<#if articles?? && (articles?size > 0)>
<#list articles as x>
${x.headline}
</#list>
</#if>
 : HT SYNDICATION</title>
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
									<div class="box-body post-body">
																	
										<#if articles?? && (articles?size > 0)>
											<#list articles as x>
												<div class="post-inner article">
													<#if x.accessStatus == "DISABLE">
														<div align="center" class="bigerror">Sorry! Article is temporary disable...</div>
													<#elseif x.accessStatus == "FULL_RESTRICTED">
														<div align="center" class="bigerror">Sorry! Article is fully restricted...</div>
													<#else> 
														<div class="box_header" style="margin-left:33px;margin-right:30px;margin-bottom:20px;margin-top:20px;">The article below represents a preview only and is not meant for reuse or republishing.</div>
														<h2 class="postheader">${x.headline}
															<#if user?? && user.firstName?? && (user.role=1 || user.role=3)>
																<span style="font-weight:bold; padding-left:20px;">
																	<a href="${webroot}content/contentupdate?id=${x.id?string("0")}"><img src="${webroot}admin/images/edit_article.png" height="50" /></a>
																</span>
															</#if>
														</h2>
														<div class="blog postcontent" style="float:left;width:730px;">
															<div class="articleinfo">
																<a href='${webroot}publication?pub="${x.publicationEncoded}"'>${x.publication}</a>
																<span style="margin-left: 10px;margin-right: 10px;">
																	<span style="font-style: normal;">(</span>
																		<#list x.category as y>
																			<a href='${webroot}category?cat="${x.categoryEncoded.get(y_index)}"'>${y}</a><#if y_has_next>,</#if>&#32;
																		</#list>
																	|&#32;<a href='${webroot}source?src="${x.sourceEncoded}"'>${x.source}</a>
																	<span style="font-style: normal;">)</span>
																</span>
																<span style="font-weight:bold;">
																	Published On:&#32;${x.contentDate}
																</span>
															</div>
															<div class="articlepara">
																<#list x.news as y>
																	${y}<br /><br />
																</#list>
																<#if x.accessStatus == "SHORT_ACCESS">
																	<div class="box" style="margin-top: 24px;">
																    	<div class="copyrightinfo">
																    		<span class="copyrightcompany">To purchase the reprint of this article or to get the complete feed from this publication, please <a href="${webroot}subscription" style="font-size:13px;color:#22AEEE;">Click Here</a></span>
																    	</div>
																  	</div>
															  	</#if>
															</div>
														</div>
<div id='div-gpt-ad-1383562815629-0' class="box-body post-body" style="float:right;width:162px;">
										
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1383562815629-0'); });
</script>
										
</div>



													</#if>
												</div>
											</#list>
										<#else>
											<div align="center" class="bigerror">Sorry! Article deleted or moved from the site...</div>
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
});
</script>
</body>	
</html> 