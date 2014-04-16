<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Revenue Report: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<script language="JavaScript" type="text/javascript" src="${webroot}admin/js/jquery-ui.js"></script>
	<link rel="stylesheet" href="${webroot}admin/css/ui-lightness/jquery-ui-custom.css" />
</head>
<body>
<div id="container">
	<div id="main" role="main">
		<#include "../../default/admin/adminheader.ftl">
		<section class="spot-bg child"></section>
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body" style="min-height: 530px;">
										<center>
										<div style="display: block; padding:10px;">
									    	<div style="width: 700px;">
									    		<@s.form action="revenuereportshow" theme="simple">
										    		<div class="formrow">
										    			<@s.actionerror/>
										    		</div>
										    		<div class="formrow">
										    			<div class="show-sub-title"><center>Search Report</center></div>
										    		</div>
										    		<div class="formrow">
												    	<#if user?? && (user.role=1 || user.role=7)>
												    		<div class="formcolumn1"><span class="formheader">Publication: </span></div>
											    			<div class="formcolumn"><@s.select name="publication" label="Publication" list=pubList listKey="id" listValue="name" /></div>
										    			</#if>
										    			<div class="formcolumn1"><@s.textfield name="date" label="Date" readonly="true" /></div>
										    			<!--div class="formcolumn"><@s.submit value="Submit" align="center"/></div-->
										    			<div style="display: none;"><@s.submit name="monthexport" value="Month Export" action="revenuemonthreportexport"/></div>
										    			<div style="display: none;"><@s.submit name="yearexport" value="Year Export" action="revenueyearreportexport"/></div>
										    		</div>
												</@s.form>
										  	</div>
										</div>
										<hr />
										<#if pubRevenues??>
											<#if (pubRevenues?size > 0)>
												<div class="show-sub-title"><center>Revenue Report for ${date}</center></div>
								    			<table style="width: 800px;" border=1 cellpadding="8" cellspacing="0">
									    			<tr>
														<td colspan="3"><div id="monthexport" class="htrightmenu exporticon" target="revenuereportexportmonthly"><span class="icon_text">Current Month</span></div><div class="htrightmenu" style="display: block; width: 20px;">&nbsp;</div><div id="yearexport" class="htrightmenu exporticon" target="revenuereportexportyear"><span class="icon_text">Current Year</span></div></td>
													</tr>
								    				<tr>
														<th>Publication name</th>
														<th>Dataport/Client Name</th>
														<th>Revenue Share (<b>US $</b>)</th>
													</tr>
													<#assign grandSum = 0>
										    		<#list pubRevenues as pubRevenue>
										    			<#assign clients = pubRevenue.clients>
										    			<#assign firstRow = true>
										    			<#assign clientsSize = clients?size>
										    			<#assign pubIndex = (pubRevenue_index % 2)>
										    			<#if clientsSize = 0>
											    			<tr class="row${pubIndex}">
											    				<td>${pubRevenue.name}</td>
											    				<td colspan=2>&nbsp;</th>
															</tr>
										    			</#if>
										    			<#list clients as client>
											    			<tr class="row${pubIndex}">
											    				<#if firstRow = true>
											    					<td rowspan=${clientsSize}>${pubRevenue.name}</td>
											    					<#assign firstRow = false>
											    				</#if>
																<td>${client.name}</td>
																<td>$ ${client.revenue}</td>
															</tr>
										    			</#list>
										    			<tr class="row${pubIndex}">
															<td colspan=2><span style="float: right; padding-right: 20px;">Total</span></td>
															<td class="rowtotal">$ ${pubRevenue.sum}</td>
														</tr>
														<#assign grandSum = grandSum + pubRevenue.sum>
										    		</#list>
										    		<tr>
														<td colspan=3>&nbsp;</td>
													</tr>
										    		<tr class="row${pubIndex}">
														<td colspan=2><span style="float: right; padding-right: 20px;">Grand Total</span></td>
														<td class="rowtotal">$ ${grandSum}</td>
													</tr>
									    		</table>
									    	<#else>
							    				<div class="show-sub-title"><center>No Record Found for ${date}</center></div>
											</#if>
								    	</#if>
								    	</center>
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
	$("#htrevenuemenu").attr("class","selected");
	$("#revenuereportshow_date").datepicker({
		changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
		dateFormat: "MM yy",
		showOn: "button",
	    buttonImage: "${webroot}admin/images/calendar.gif",
	    buttonImageOnly: true,
	    onSelect: function(dateText, inst) {$('#revenuereportshow').submit();},
		defaultDate: new Date('${date}')
	});
	$("#revenuereportshow_publication").change(function(){
		$('#revenuereportshow').submit();
	});
	$("#monthexport").click(function(){
		$("#revenuereportshow_monthexport").click();
	});
	$("#yearexport").click(function(){
		$("#revenuereportshow_yearexport").click();
	});
});
</script>
</body>	
</html> 