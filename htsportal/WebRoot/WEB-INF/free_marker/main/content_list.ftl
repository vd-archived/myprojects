<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
<#if shortTypeDetails??>
		
${shortTypeDetails.key}
</#if>
 : HT SYNDICATION</title> <#include "../default/admin/head.ftl">
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
										<div class="box-body post-body" style="min-height: 580px;">
											<#if shortTypeDetails??>
												<div class="box_header" style="margin-bottom: 20px;">
													<h2 class="postheader" style="padding-left: 0px;">${shortTypeDetails.key}</h2>
													<p>${shortTypeDetails.value}</p>
												</div>
											</#if>
											
											<div style="float: left; display: block; width: 200px;">
												<#if publicationsInfo?? && (publicationsInfo?size > 0)>
												<div class="box_shortintro">
													<h2 class="box_shortintroheading">Publication</h2>
													<#if (publicationsInfo?size > 3)>
													<div id="publicationrowall" style="overflow: hidden; max-height: 100px;" class="listchilds">
													<#else>
													<div id="publicationrowall" style="overflow: hidden;" class="listchilds">
													</#if>
														<#list publicationsInfo as x>
															<div class="box_shortintro_rows"><a href="${x.value.key}">${x.key} [${x.value.value}]</a></div>
														</#list>
													</div>
													<#if (publicationsInfo?size > 3)>
														<div class="box_shortintro_rows_showalldiv" id="showalldiv"><img src="${webroot}admin/images/plus.gif" style="float:left;cursor:pointer; margin-top: 1px;"></div>
														<div class="box_shortintro_rows_showlessdiv" id="showlessdiv" style="display:none; cursor:pointer;margin-top: 1px;"><img src="${webroot}admin/images/minus.gif" style="float:left;"></div>
													</#if>
												</div>
												</#if>
												<div style="display:block; height: 20px;"></div>
												<#if categoriesInfo?? && (categoriesInfo?size > 0)>
												<div class="box_shortintro">
													<h2 class="box_shortintroheading">Category</h2>
													<#list categoriesInfo as x>
														<div class="box_shortintro_rows"><a href="${x.value.key}">${x.key} [${x.value.value}]</a></div>
													</#list>
												</div>
												</#if>
												<div style="display:block; height: 20px;"></div>
												<#if sourcesInfo?? && (sourcesInfo?size > 0)>
												<div class="box_shortintro">
													<h2 class="box_shortintroheading">Source</h2>
													<#list sourcesInfo as x>
														<div class="box_shortintro_rows"><a href="${x.value.key}">${x.key} [${x.value.value}]</a></div>
													</#list>
												</div>
												</#if>
												<div style="display:block; height: 20px;"></div>
												<#if bylineInfo?? && (bylineInfo?size > 0)>
												<div class="box_shortintro">
													<h2 class="box_shortintroheading">Byline</h2>
													<#if (bylineInfo?size > 3)>
													<div id="bylinerowall" style="overflow: hidden; max-height: 100px;" class="listchilds">
													<#else>
													<div id="bylinerowall" style="overflow: hidden;" class="listchilds">
													</#if>
														<#list bylineInfo as x>
															<div class="box_shortintro_rows"><a href="${x.value.key}">${x.key} [${x.value.value}]</a></div>
														</#list>
													</div>
													<#if (bylineInfo?size > 3)>
														<div class="box_shortintro_rows_showalldiv" id="showalldiv"><img src="${webroot}admin/images/plus.gif" style="float:left;cursor:pointer; margin-top: 1px;"></div>
														<div class="box_shortintro_rows_showlessdiv" id="showlessdiv" style="display:none; cursor:pointer;margin-top: 1px;"><img src="${webroot}admin/images/minus.gif" style="float:left;"></div>
													</#if>
												</div>
												</#if>
												<div style="display:block; height: 20px;"></div>
											</div>
											<div style="float: left; width: 750px; display: block; margin-left: 10px;">
											<div id='div-gpt-ad-1383562815631-0' style="display: block;">

<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1383562815631-0'); });
</script>
</div>

												<#if articles?? && (articles?size > 0)>
													<div class="box_content">
														<#list articles as x>
															<div class="box_content_rows">
																<div class="cleared"></div>
																<div class="box_contentheading">
																	<a href='${webroot}article?arid="${x.id?string("0")}"&pub="${x.publicationEncoded}"'>${x.headline}</a>
																</div>
																<div class="articleinfo">
																	<a href='${webroot}publication?pub="${x.publicationEncoded}"'>${x.publication}</a>
																	<span style="margin-left: 10px; margin-right: 10px;">
																		<span style="font-style: normal;">(</span><#list x.category as y><a href='${webroot}category?cat="${x.categoryEncoded.get(y_index)}"'>${y}</a><#if y_has_next>,</#if>&#32; </#list> |&#32;<a href='${webroot}source?src="${x.sourceEncoded}"'>${x.source}</a><span style="font-style: normal;">)</span>
																	</span><span style="font-weight: bold;"> Published On:&#32;${x.contentDate}</span>
																</div>
																<div class="articlepara">
																	<#list x.news as y>
																		${y}
																		<br /><br />
																	</#list>
																</div>
																<a class="csbutton-color" style="float: right; margin-right: 15px;" href='${webroot}article?arid="${x.id?string("0")}"&pub="${x.publicationEncoded}"'>Continue Reading</a>
																<div class="cleared"></div>
																<div class="thinline"></div>
															</div>
														</#list>
														<br clear="all" />
														<div align="center" class="pagecontainer">
															<#if pageNumberList?? && (pageNumberList?size > 1)>
																<#list pageNumberList as x>
																	<#if page?? && x.value==page>
																	   <a href="${x.key}" class="pageselected">${x.value}</a>
																	<#else>
																		<a href="${x.key}">${x.value}</a>
																	</#if>
																</#list>
															</#if>
														</div>
													</div> 
												<#else>
												<div class="blog postcontent">
													<div class="notfound" align="center">Sorry! No data found...</div>
												</div>
												</#if>
											</div>
											<div class="cleared"></div>
											<div class="cleared"></div>
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
	<script>
		$(document).ready(function($) {
			$("#htarticlemenu").attr("class", "selected");
		});
	</script>
</body>
</html> 