<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Content: HT SYNDICATION</title>
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
										<div class = "box_header" style="margin-bottom: 20px;">
											<h2 class = "postheader" style="padding-left: 0px;">Publications</h2>
											<p>We have tie-ups with more than 200 publications that route their content through us for further distribution. Apart from our own newspapers - Hindustan Times and Mint - our publishing partners include prominent Newswires, Newspapers, News Portals and Magazines, like The ANI, IANS, UNI, Pioneer, New Indian Express, Financial Express, Dion etc.</p>
										</div>
										<div align = "center"><img src="${webroot}admin/images/publication_collage.png" style="max-width: 875px;"/> </div>
										<div style="display: block; margin-left: 10px;">
											<#if bodycontent??>
												<table class="tablestyle1" style = "width:100%;">
													<tr>
														<th width ="200px;"><div style="text-align: center;font-weight: bold;">Name</div></th>
														<th><div style="text-align: center;font-weight: bold;">Introduction</div></th>
													</tr>
													${bodycontent!""}
												</table>
											<#else>
												<div>No Publication Found</div>
											</#if>
										</div>
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
	$("#htarticlemenu").attr("class","selected");
	$('#togglepublicationview').click(function(){
		if($(this).attr("src")=="${webroot}admin/images/lesspublication.png")
		{
			$(".tablestyle1").find("tr[toggletr=\"toggletr\"]").css("display", "none");
			$(this).attr("src","${webroot}admin/images/morepublication.png");
		}
		else
		{
			$(".tablestyle1").find("tr[toggletr=\"toggletr\"]").css("display", "");
			$(this).attr("src","${webroot}admin/images/lesspublication.png");
		}
	});
});
</script>
</body>	
</html> 