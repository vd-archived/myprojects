<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update the content details: HT SYNDICATION</title>
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
											<div class="show-sub-title">Update Article Feed</div>
									    		<div class="divtable" style="width: 600px;">
									    			<#if contents??>
													<#list contents as x>
														<@s.form action="contentupdate">
												    		<@s.actionerror/>
												    		<tr>
																<td class="tdLabel"><label for="contentupdate_id" class="label">ID:</label></td>
																<#setting number_format="0">
																<td><input type="text" name="id" value="${x.id}" readonly="readonly" id="contentupdate_id" class="inputfieldreadonly" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_section" class="label">Section:</label></td>
																<td><input type="text" name="section" value="${x.section!""}" id="contentupdate_section" style="width:350px;height:25px;" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_headline" class="label">Headline:</label></td>
																<td><textarea name="headline" rows="2" id="contentupdate_headline" style="width:350px;height:50px;">${x.headline!""}</textarea></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_news" class="label">Body Text:</label></td>
																<td><textarea name="news" rows="2" id="contentupdate_news" style="width:350px;height:100px;">${x.news!""}</textarea></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_byline" class="label">Byline:</label></td>
																<td><input type="text" name="byline" value="${x.byline!""}" id="contentupdate_byline" style="width:350px;height:25px;" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_location" class="label">Location:</label></td>
																<td><input type="text" name="location" value="${x.location!""}" id="contentupdate_location" style="width:350px;height:25px;" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_publication_id" class="label">Publication</label></td>
																<td>
																	<select name="publication_id" id="contentupdate_publication_id" style="width:350px;height:25px;">
																		<#list publications?keys as prop>
																			<#if x.publication==publications.get(prop)>
																				<option value="${prop}" selected="selected">${publications.get(prop)}</option>
																			<#else>
																				<option value="${prop}">${publications.get(prop)}</option>
																			</#if>
																		</#list>
																	</select>
																</td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_source_id" class="label">Source</label></td>
																<td>
																	<select name="source_id" id="contentupdate_source_id" style="width:350px;height:25px;">
																		<#list sources?keys as prop>
																			<#if x.source==sources.get(prop)>
																				<option value="${prop}" selected="selected">${sources.get(prop)}</option>
																			<#else>
																				<option value="${prop}">${sources.get(prop)}</option>
																			</#if>
																		</#list>
																	</select>
																</td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_category_id" class="label">Category</label></td>
																<td>
																	<select name="category_id" id="contentupdate_category_id" style="width:350px;height:25px;">
																		<#list categories?keys as prop>
																			<#if x.category[0]==categories.get(prop)>
																				<option value="${prop}" selected="selected">${categories.get(prop)}</option>
																			<#else>
																				<option value="${prop}">${categories.get(prop)}</option>
																			</#if>
																		</#list>
																	</select>
																</td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_copyright" class="label">Copyright:</label></td>
																<td><input type="text" name="copyright" value="${x.copyright!""}" id="contentupdate_copyright" style="width:350px;height:25px;" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_uniqueid" class="label">Unique ID:</label></td>
																<td><input type="text" name="uniqueid" value="${x.uniqueid!""}" id="contentupdate_uniqueid" style="width:350px;height:25px;" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_contentdate" class="label">Content Date:</label></td>
																<td><input type="text" name="contentdate" value="${x.contentdate!""}" id="contentupdate_contentdate" style="width:350px;height:25px;" readonly="readonly" /></td>
															</tr>
															<tr>
																<td class="tdLabel"><label for="contentupdate_status" class="label">Status:</label></td>
																<td>
																	<input type="radio" name="status" id="contentupdate_status1" value="1" checked="checked" /><label for="contentupdate_status1">Enable</label>
																	<input type="radio" name="status" id="contentupdate_status0" value="0"/><label for="contentupdate_status0">Disable</label>
										    					</td>
															</tr>
															<@s.submit value="Update Content" align="center"/>
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
<script type="text/javascript" src="${webroot}admin/js/jquery-ui.js"></script>
<script>
$(document).ready(function($) {
	$("#htcontentmenu").attr("class","selected");
	$("#contentupdate_contentdate").datepicker({changeMonth: true, changeYear: true, ampm: true, dateFormat: "M d, yy", onSelect: function(dateText, inst) {
	    $(this).val(dateText + " 11:59:00 PM");
	}});
});
</script>
</body>	
</html> 