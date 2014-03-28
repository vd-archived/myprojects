<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update Client: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<style>
		textarea {
			width: 300px;
			height: 100px;
		}
	</style>
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
											<div class="show-sub-title">Update Client</div>
									    	<div class="divtable" style="width: 600px;">
										    	<@s.form action="clientupdate" theme="simple">
										    		<@s.hidden name="id" />
										    		<div class="formrow">
										    			<@s.actionerror/>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Client Name: </span></div>
										    			<div class="formcolumnfull"><@s.textfield name="name" label="Name" /></div>
										    		</div>
										    		<div class="formrow">
											    		<div class="formcolumn1"><span class="formheader">Details: </span></div>
											    		<div class="formcolumnfull"><@s.textarea name="details" label="*Details" /></div>
											    	</div>
											    	<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Revenue Interval: </span></div>
										    			<div class="formcolumnfull"><@s.select name="timeinterval" label="Revenue Interval" list=timeIntervalList listKey="key" listValue="value" /></div>
										    		</div>
											    	<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Status: </span></div>
										    			<div class="formcolumnfull"><@s.select name="status" label="Status" list=statusList listKey="key" listValue="value" /></div>
										    		</div>
										    		<div style="display: block; margin-top: 20px;">&nbsp;</div>
										    		<#if currentPubList??>
										    			<table style="width: 550px;" border=1 cellpadding="8" cellspacing="0">
															<tr>
																<th>S.No.</th>
																<th>Publication Name</th>
																<th>&nbsp;</th>
															</tr>
															<#assign snocounter = 0>
															<#list currentPubList?keys as pubId>
																<#assign snocounter = snocounter + 1>
																<#assign pubIndex = (snocounter % 2)>
																<tr class="row${pubIndex}">
																	<td>${snocounter}</td>
																	<td><@s.hidden name="pubs" value=pubId /> ${currentPubList[pubId]}</td>
																	<td><input type="button" name="addanotherpub" id="addanotherpub" onClick="$(this).parent().parent().remove();" value="X" /></td>
																</tr>
															</#list>
											    		</table>
											    	</#if>
										    		<div style="display: block; margin-top: 20px;">&nbsp;</div>
										    		<div id="publicationdiv" class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Publication: </span></div>
										    			<div class="formcolumnfull"><@s.select name="pubs" label="Publications" list=pubList listKey="id" listValue="name" /></div>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">&nbsp;</span></div>
										    			<div class="formcolumnfull"><span class="formheader"><td><input type="button" name="addanotherpub" id="addanotherpub" onClick="$(this).parent().parent().before($('#publicationdiv').clone());" value="Add Another Publication" /></td></span></div>
										    		</div>
										    		<div class="formrow submitcenter">
										    			<center><@s.submit value="Update Client" align="center"/></center>
										    		</div>
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
	$("#htclientmenu").attr("class","selected");
});
</script>
</body>	
</html> 