<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Upload new image in category: HT SYNDICATION</title>
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
									<div class="box-body post-body" style="min-height: 530px;">
										<div style="display: block; padding:40px;">
											<div class="show-sub-title">Upload Image</div>
									    	<div class="divtable" style="width: 600px;">
										    	<@s.form id="upload" action="imageuploadincategory" enctype="multipart/form-data">
													<@s.actionerror/>
													<@s.select name="imagecategory" label="Image Category" list=imagecategories listKey="key" listValue="value" />
													<@s.select name="imagesubcategory" label="Image Sub Category" list={"MEDIUM":"MEDIUM", "THUMB":"THUMB", "":"ON ROOT"} listKey="key" listValue="value" />
													<@s.file id="1" label="Image: " name="upload" accept="image/*, application/x-gzip, application/zip, multipart/x-gzip, multipart/x-zip" />
													<tr id="uploadExtraFileField">
													    <td><input type="submit" value="Start Upload" /></td>
													    <td><input type="button" value="Insert New Upload" onclick="insertinputfilefield();" /></td>
													</tr>
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
</body>	
<script  type="text/javascript">
$(document).ready(function($) {
	$("#htimagecategorymenu").attr("class","selected");
});
	function insertinputfilefield()
	{
		$('#uploadExtraFileField').before('<tr><td class="tdLabel"><label for="1" class="label">Image: :</label></td><td><input type="file" name="upload" value="[]" accept="image/*, application/x-gzip, application/zip, multipart/x-gzip, multipart/x-zip" id="1"/></td></tr>');
	}
</script>
</html> 