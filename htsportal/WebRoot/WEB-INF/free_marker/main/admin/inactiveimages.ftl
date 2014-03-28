<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Show not active images: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<script src="${webroot}admin/js/ui/jquery.ui.core.min.js"></script>
	<script src="${webroot}admin/js/ui/jquery.ui.widget.min.js"></script>
	<script src="${webroot}admin/js/ui/jquery.ui.position.min.js"></script>
	<script src="${webroot}admin/js/ui/jquery.ui.tooltip.min.js"></script>
	<style>
		.ui-tooltip {padding: 8px;position: absolute;z-index: 9999;max-width: 550px;background-color: white;-webkit-box-shadow: 0 0 5px #aaa;box-shadow: 0 0 5px #aaa;}
		* html .ui-tooltip {background-image: none;}
		body .ui-tooltip { border-width: 2px; }
	</style>
	<script>
		$(function() {
			$( document ).tooltip({
				track: true,
				items: "img, [data-geo], [title]",
				content: function() {
					var element = $( this );
					if ( element.is( "img" ) && element.is( "alt" )) {
						return element.attr( "alt" );
					}
					else if ( element.is( "a" ) && element.is( "[title]" ) ) {
						return "<p><img class='map' alt='" + text +
								"' src='"+element.attr( "src" )+"' /></p><br /><p>Title: " + element.attr( "title" ) + "</p>";
					}
					else if ( element.is( "[data-geo]" ) ) {
						var text = element.text();
						return "";
					}
				}
			});
		});
	</script>
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
										<div align="center">
											<div class="thumbcontainer">
		                                        <#list imageNameList as x>
		                                             <a href="imageupdate?id=${x.id?string("0")}" src="${webroot}loadimage?cat=MEDIUM&filename=${x.name}.jpg" title="${x.title!""}">
		                                             	<div class="thumbimagecontainer">
		                                                 	<div class="thumbimage" style="background: url('${webroot}loadimage?cat=THUMB&filename=${x.name}.jpg');background-repeat: no-repeat; background-position: center bottom; background-color: #000"></div>
		                                                 	<div class="thumbimagecaption">
		                                                 		<#if x.title?? && x.title?length &gt; 0>
		                                                 			${x.title}
		                                                 		</#if>
		                                                 	</div>
		                                             	</div>
		                                             </a> 
		                                        </#list>
		                                    </div>
		                                    <div class="cleared"></div>
		                                    <div align="center" class="pagecontainer">
		                                        <#list pageNumberList as x>
		                                            <#if page?? && x.value==page>
		                                               <a href="${x.key}" class="pageselected">${x.value}</a>
		                                            <#else>
		                                                <a href="${x.key}">${x.value}</a>
		                                            </#if>
		                                        </#list>
		                                    </div>
		                                    <div class="cleared"></div>
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
<script src="${webroot}admin/js/htadmin.js"></script>
<script>
$(document).ready(function($) {
	$("#htpublicationmenu").attr("class","selected");
});
</script>
</body>	
</html> 