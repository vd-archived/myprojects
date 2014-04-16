<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Images: HT SYNDICATION</title>
	<#include "../default/admin/head.ftl">
	<script type="text/javascript">
		$(document).ready(function() {
			$('.thumbcontainer a').lightBox({
				imageLoading: '${webroot}admin/images/loading.gif',
				imageBtnClose: '${webroot}admin/images/close.gif',
				imageBtnPrev: '${webroot}admin/images/prev.gif',
				imageBtnNext: '${webroot}admin/images/next.gif',
				containerResizeSpeed: 1000,
				txtImage: "&#169; HT Syndication : To buy this cartoon, please <a href='${webroot}subscription' style='text-decoration: none;'><I>Click Here</I></a><br />Cartoon",
				txtOf: 'of'
			   });
		});
	</script>
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
									<div class="box-body post-body" style="">
										<div class="box_header" style="margin-bottom: 20px;">
											<h2 class="postheader" style="padding-left: 0px;">Cartoon</h2>
											<p>A collection of HT cartoons with thought-provoking commentary and witty interpretations of the biggest news stories and personalities from India’s best cartoonists. To purchase these cartoons as a single buy or as a regular feed, please <a href="${webroot}subscription" style="font-size:13px;text-decoration: none;"><I>Click Here</I></a>.
											</p>
										</div>
										<div class="thumbcontainer">
											<#list cartoonList as x>
												<a href="${webroot}loadimage?cat=Cartoon&subcat=MEDIUM&filename=${x.encodedImageName}" title="${x.imageCaption!""}">
                                                <div class="thumbimagecontainer">
    												<div class="thumbimage" style="background: url('${webroot}loadimage?cat=Cartoon&subcat=THUMB&filename=${x.encodedImageName}');background-repeat: no-repeat; background-position: center center; background-color: #000;"></div>
                                                    <div class="thumbimagecaption">
                                                                <#if x.imageCaption?? && x.imageCaption?length &gt; 0>
                                                                    ${x.imageCaption}
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
	$("#htcartoonmenu").attr("class","selected");
});
</script>
</body>	
</html> 