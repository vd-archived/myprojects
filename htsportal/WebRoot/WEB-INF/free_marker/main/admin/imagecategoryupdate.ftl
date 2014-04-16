<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update the image category details: HT SYNDICATION</title>
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
											<div class="show-sub-title">Update Image Category</div>
									    		<div class="divtable" style="width: 600px;">
												<#if imagecategorys??>
													<#list imagecategorys as x>
														<@s.form action="imagecategoryupdate">
												    		<@s.actionerror/>
															<tr>
																<td class="tdLabel"><label for="imagecategoryupdate_imagecategoryID" class="label">ID:</label></td>
																<td><input type="text" name="imagecategoryID" value="${x.id}" readonly="readonly" id="imagecategoryupdate_imagecategoryID" class="inputfieldreadonly" /></td>
															</tr>
												    		<@s.textfield name="imagecategoryName" label="Name" value="${x.name}"/>
															<@s.textarea rows=5 cols=40 name="imagecategoryDetails" label="Details" value="${x.details}" />
															<@s.textfield name="imagecategoryPriority" label="Priority" value="${x.priority}" />
															<tr>
																<td class="tdLabel"><label for="imagecategoryupdate_imagecategoryHighlight" class="label">Highlight:</label></td>
																<td>
																	<select name="imagecategoryHighlight" id="imagecategoryupdate_imagecategoryHighlight">
																		<#if x.highlight==1>
																			<option value="1" selected="selected">YES</option>
																			<option value="0">NO</option>
																		<#else>
																			<option value="1">YES</option>
																			<option value="0" selected="selected">NO</option>
																		</#if>
																	</select>
																</td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="imagecategoryupdate_imagecategorystatus" class="label">Status:</label></td>
																<td>
																	<select name="imagecategorystatus" id="imagecategoryupdate_imagecategorystatus">
																		<#if x.status==1>
																			<option value="1" selected="selected">Enable</option>
																			<option value="0">Disable</option>
																		<#else>
																			<option value="1">Enable</option>
																			<option value="0" selected="selected">Disable</option>
																		</#if>
																	</select>
																</td>
															</tr>
															<@s.submit value="Update Image Category" align="center"/>
														</@s.form>
														<#break>
													</#list>
												<#else>
													<@s.actionerror/>
												</#if>
											</div>
										</div>
										<div class="cleared"></div>
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
	$("#htimagecategorymenu").attr("class","selected");
});
</script>
</body>	
</html> 