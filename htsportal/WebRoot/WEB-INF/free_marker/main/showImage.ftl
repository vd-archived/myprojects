<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>${sourceName!""} Images : HT SYNDICATION</title>
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
									<div class="box-body post-body" style="">
										<div class="box_header" style="margin-bottom: 20px;">
											<h2 class="postheader" style="padding-left: 0px;">${sourceName!""}</h2>
											<p>${sourceIntro!""}</p>
										</div>
                                        <div class="thumbcontainer" id="vivek" style="float:left;width:750px;">
                                            <#list images as x>
                                                 <a href="${webroot}loadimage?cat=MEDIUM&filename=${x.name}.jpg" title="${x.details!""}" id="${x.id!""}">
                                                 	<div class="thumbimagecontainer" style="<#if user?? && user.firstName??>height: 250px;</#if>">
	                                                 	<div class="thumbimage" style="background: url('${webroot}loadimage?cat=THUMB&filename=${x.name}.jpg');background-repeat: no-repeat; background-position: center bottom; background-color: #000"></div>
	                                                 	<#if user?? && user.firstName??><div style="height: 50px; z-index: 1000px;"><a href='${webroot}graphic/imageupdate?id=${x.id?string("0")}'><img src='${webroot}admin/images/edit_image.png' height='50' /></a></div></#if>
	                                                 	<div class="thumbimagecaption">
	                                                 		<#if x.details?? && x.details?length &gt; 0>
	                                                 			${x.details}
	                                                 		</#if>
	                                                 	</div>
                                                 	</div>
                                                 </a>
                                            </#list>
                                        </div>
<div id='div-gpt-ad-1383562815629-0' style="float:right;width:162px;">
	<script type='text/javascript'>
	googletag.cmd.push(function() { googletag.display('div-gpt-ad-1383562815629-0'); });
	</script>
</div>
                                        <div class="cleared"></div>
                                        <div align="center" class="pagecontainer" style="width:750px;">
                                        	<#if pageNumberList??>
	                                            <#list pageNumberList as x>
	                                                <#if page?? && x.value==page>
	                                                   <a href="${x.key}" class="pageselected">${x.value}</a>
	                                                <#else>
	                                                    <a href="${x.key}">${x.value}</a>
	                                                </#if>
	                                            </#list>
	                                        </#if>
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
    $("#htimagemenu").attr("class","selected");
});
</script>
</body>	
</html> 