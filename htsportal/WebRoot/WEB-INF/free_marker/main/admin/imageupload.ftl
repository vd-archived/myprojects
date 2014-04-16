<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Image Upload: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
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
									<div class="box-body post-body" style="min-height: 580px;">
										<div style="display: block; padding:40px;">
											<div class="show-sub-title" style="margin-bottom: 20px;">Upload Images</div>
												<div class="divtable" style="width: 600px;">
										    	<@s.form action="imageupload" method="POST" enctype="multipart/form-data">
										    		<tr>
														<td class="tdLabel"><label for="imageupload_upload[]" class="label">Image</label></td>
														<td>
															<input type="file" name="upload" id="imageupload_upload" multiple="multiple" accept="image/*, application/octet-stream, application/photoshop, application/illustrator" />
														</td>
													</tr>
													<@s.textarea rows=2 cols=40 name="keywords" label="Keywords" />
													<@s.textarea rows=2 cols=40 name="copyright" label="Copyright" />
										    		<@s.select name="eventid" label="Event" list=events listKey="id" listValue="name" />
										    		<@s.select name="tagids" label="Image Category" list=imageTags listKey="id" listValue="name" />
										    		<tr>
														<td class="tdLabel">&nbsp;</td>
														<td>
															<input type="button" name="addanothertag" id="addanothertag" onClick="$(this).parent().parent().before($('#imageupload_tagids').parent().parent().clone());" value="Add Another Category" />
														</td>
													</tr>
													<@s.submit value="Start Uploading" align="center"/>
													<@s.actionerror/>
												</@s.form>
										  	</div>
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
<script>
$(document).ready(function($) {
	$("#htsourcemenu").attr("class","selected");
});
</script>
</body>	
</html> 