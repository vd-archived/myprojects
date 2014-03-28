<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Create new content details: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<link rel="stylesheet" type="text/css" href="${webroot}admin/css/ui-lightness/jquery-ui-custom.css" />
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
											<div class="show-sub-title">New Article Feed</div>
									    		<div class="divtable" style="width: 600px;">
										    		<@s.form action="contentcreate">
										    			<@s.actionerror/>
													<tr>
														<td class="tdLabel"><label for="contentcreate_section" class="label">Section:</label></td>
														<td><input type="text" name="section" value="" id="contentcreate_section" style="width:350px;height:25px;" /></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_headline" class="label">Headline:</label></td>
														<td><textarea name="headline" rows="2" id="contentcreate_headline" style="width:350px;height:50px;"></textarea></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_news" class="label">Body Text:</label></td>
														<td><textarea name="news" rows="2" id="contentcreate_news" style="width:350px;height:100px;"></textarea></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_byline" class="label">Byline:</label></td>
														<td><input type="text" name="byline" value="" id="contentcreate_byline" style="width:350px;height:25px;" /></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_location" class="label">Location:</label></td>
														<td><input type="text" name="location" value="" id="contentcreate_location" style="width:350px;height:25px;" /></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_publication_id" class="label">Publication</label></td>
														<td>
															<select name="publication_id" id="contentcreate_publication_id" style="width:350px;height:25px;">
																<#list publications?keys as prop>
																	<option value="${prop}">${publications.get(prop)}</option>
																</#list>
															</select>
														</td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_source_id" class="label">Source</label></td>
														<td>
															<select name="source_id" id="contentcreate_source_id" style="width:350px;height:25px;">
																<#list sources?keys as prop>
																	<option value="${prop}">${sources.get(prop)}</option>
																</#list>
															</select>
														</td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_category_id" class="label">Category</label></td>
														<td>
															<select name="category_id" id="contentcreate_category_id" style="width:350px;height:25px;">
																<#list categories?keys as prop>
																	<option value="${prop}">${categories.get(prop)}</option>
																</#list>
															</select>
														</td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_copyright" class="label">Copyright:</label></td>
														<td><input type="text" name="copyright" value="" id="contentcreate_copyright" style="width:350px;height:25px;" /></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_uniqueid" class="label">Unique ID:</label></td>
														<td><input type="text" name="uniqueid" value="" id="contentcreate_uniqueid" style="width:350px;height:25px;" /></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_contentdate" class="label">Content Date:</label></td>
														<td><input type="text" name="contentdate" value="" id="contentcreate_contentdate" style="width:350px;height:25px;" /><br clear="all" /><span style="color: blue;">31/12/2000</span> <span style="color: red;">(dd/MM/yyyy)</span></td>
													</tr>
													<tr>
														<td class="tdLabel"><label for="contentcreate_status" class="label">Status:</label></td>
														<td>
															<input type="radio" name="status" id="contentcreate_status1" value="1" checked="checked" /><label for="contentcreate_status1">Enable</label>
															<input type="radio" name="status" id="contentcreate_status0" value="0"/><label for="contentcreate_status0">Disable</label>
								    					</td>
													</tr>
													<@s.submit value="Create Article Feed" align="center"/>
												</@s.form>
										  	</div>
										</div>
										<div class="cleared"></div>
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
<script type="text/javascript" src="${webroot}admin/js/jquery-ui.js"></script>
<script>
$(document).ready(function($) {
	$("#htcontentmenu").attr("class","selected");
	$("#contentcreate_contentdate").datepicker({changeMonth: true, changeYear: true, ampm: true, dateFormat: "M d, yy", onSelect: function(dateText, inst) {
	    $(this).val(dateText + " 11:59:00 PM");
	}});
});
</script>
</body>	
</html> 