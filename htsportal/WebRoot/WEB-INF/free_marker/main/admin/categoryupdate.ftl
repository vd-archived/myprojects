<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update the category details: HT SYNDICATION</title>
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
											<div class="show-sub-title">Update Category</div>
									    		<div class="divtable" style="width: 600px;">
												<#if categorys??>
													<#list categorys as x>
														<@s.form action="categoryupdate">
												    		<@s.actionerror/>
															<tr>
																<td class="tdLabel"><label for="categoryupdate_categoryID" class="label">ID:</label></td>
																<td><input type="text" name="categoryID" value="${x.id}" readonly="readonly" id="categoryupdate_categoryID" class="inputfieldreadonly" /></td>
															</tr>
												    		<@s.textfield name="categoryName" label="Name" value="${x.name}"/>
															<@s.textarea rows=5 cols=40 name="categoryDetails" label="Details" value="${x.details}" />
															<tr>
																<td class="tdLabel"><label for="categoryupdate_categorystatus" class="label">Status:</label></td>
																<td>
																	<select name="categorystatus" id="categoryupdate_categorystatus">
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
															<@s.submit value="Update Category" align="center"/>
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
	$("#htcontentparentmenu").attr("class","selected");
});
</script>
</body>	
</html> 