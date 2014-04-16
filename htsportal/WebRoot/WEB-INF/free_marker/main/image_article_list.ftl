<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Site Search: HT SYNDICATION</title>
    <#include "../default/admin/head.ftl">
    <#if !(user?? && user.firstName??)>
	    <script type="text/javascript">
	        $(document).ready(function() {
	            $('.thumbcontainer a').lightBox({
	                imageLoading: '${webroot}admin/images/loading.gif',
	                imageBtnClose: '${webroot}admin/images/close.gif',
	                imageBtnPrev: '${webroot}admin/images/prev.gif',
	                imageBtnNext: '${webroot}admin/images/next.gif',
	                containerResizeSpeed: 1000,
	                txtImage: "&#169; HT Syndication : To buy this image, please <a href='${webroot}subscription' style='text-decoration: none;'><I>Click Here</I></a><br />Image",
	                txtOf: 'of'
	               });
	        });
	    </script>
    </#if>
    <SCRIPT TYPE="text/javascript">
    <!--
    //Disable right click script
    function clickIE() {if (document.all) {(message);return false;}}
    function clickNS(e) {if
    (document.layers||(document.getElementById&&!document.all)) {
    if (e.which==2||e.which==3) {(message);return false;}}}
    if (document.layers)
    {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;}
    else{document.onmouseup=clickNS;document.oncontextmenu=clickIE;}
    document.oncontextmenu=new Function("return false")
    // -->
    </SCRIPT> 

    
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
									<#if site_search_type?? && (site_search_type == "all" || site_search_type == "image")>
										<div class="box-body post-body">
											<#if images?? && (images?size > 0)>
		                                        <div class="thumbcontainer" style="min-height: auto;" id="vivek">
		                                            <#list images as x>
		                                                 <a href="${webroot}loadimage?cat=MEDIUM&filename=${x.name}.jpg" title="${x.title!""}" id="${x.id!""}">
		                                                 	<div class="thumbimagecontainer" style="<#if user?? && user.firstName??>height: 250px;</#if>">
			                                                 	<div class="thumbimage" style="background: url('${webroot}loadimage?cat=THUMB&filename=${x.name}.jpg');background-repeat: no-repeat; background-position: center bottom; background-color: #000"></div>
			                                                 	<#if user?? && user.firstName??><div style="height: 50px; z-index: 1000px;"><a href='${webroot}graphic/imageupdate?id=${x.id}'><img src='${webroot}admin/images/edit_article.png' height='50' /></a></div></#if>
			                                                 	<div class="thumbimagecaption">
			                                                 		<#if x.title?? && x.title?length &gt; 3 && x.details?? && x.details?length &gt; 3>
			                                                 			${x.title}: ${x.details}
			                                                 		<#elseif x.title?? && x.title?length &gt; 3>
			                                                 			${x.title}
			                                                 		<#elseif x.details?? && x.details?length &gt; 3>
			                                                 			${x.details}
			                                                 		</#if>
			                                                 	</div>
		                                                 	</div>
		                                                 </a>
		                                            </#list>
		                                        </div>
		                                        <div class="cleared"></div>
		                                        <#if imagePageNumberList?? && (imagePageNumberList?size > 0)>
		                                        	<div align="center" class="pagecontainer">
			                                            <#list imagePageNumberList as x>
			                                                <#if page?? && x.value==page>
			                                                   <a href="${x.key}" class="pageselected">${x.value}</a>
			                                                <#else>
			                                                    <a href="${x.key}">${x.value}</a>
			                                                </#if>
			                                            </#list>
			                                        </div>
			                                        <div class="cleared"></div>
			                                    </#if>
	                                        <#else>
												<div class="blog postcontent">
													<div class="notfound" align="center">Sorry! No images found with given search...</div>
												</div>
											</#if>
										</div>
										<div class="cleared"></div>
										<br />
										<div class="thickline"></div>
									</#if>
									<#if site_search_type?? && (site_search_type == "all" || site_search_type == "article")>
										<div class="box-body post-body">
											<div style="float: left; width: 100%; display: block; margin-left: 10px;">
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
															<#if articlePageNumberList?? && (articlePageNumberList?size > 1)>
																<#list articlePageNumberList as x>
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
														<div class="notfound" align="center">Sorry! No articles found with given search...</div>
													</div>
												</#if>
											</div>
											<div class="cleared"></div>
											<div class="cleared"></div>
										</div>
									</#if>
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
    $("#htimagemenu").attr("class","selected");
});
</script>
</body>	
</html> 