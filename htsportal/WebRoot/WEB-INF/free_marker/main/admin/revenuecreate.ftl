<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Create Revenue: HT SYNDICATION</title>
	<#include "../../default/admin/head.ftl">
	<script language="JavaScript" type="text/javascript" src="${webroot}admin/js/jquery-ui.js"></script>
	<link rel="stylesheet" href="${webroot}admin/css/ui-lightness/jquery-ui-custom.css" />
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
											<div class="show-sub-title">Create Revenue</div>
									    	<div class="divtable" style="width: 700px;">
									    		<@s.form action="revenuecreate" theme="simple">
										    		<div class="formrow">
										    			<@s.actionerror/>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Publication: </span></div>
										    			<div class="formcolumn"><@s.select name="publication" label="Publication" list=pubList listKey="id" listValue="name" /></div>
										    			<div class="formcolumn1"><span class="formheader">Date</span></div>
										    			<div class="formcolumn"><@s.textfield name="date" label="Date" readonly="true" /></div>
										    		</div>
										    		<#if clientList?? && (clientList?size > 0)>
										    			<div id="client_info">
												    		<div class="formrow formbar">
												    			<div class="formcolumn2"><span class="formheader">Client Name</span></div>
												    			<div class="formcolumn1">&nbsp;</div>
												    			<div class="formcolumn"><span class="formheader">Amount (INR)</span></div>
												    		</div>
												    		<#list clientList as client1>
												    			<div class="formrow">
													    			<div class="formcolumn2"><span class="formheader">${client1.name}</span><@s.hidden name="clients" value="${client1.id}" /></div>
													    			<div class="formcolumn1">&nbsp;</div>
													    			<div class="formcolumn"><@s.textfield name="amounts" value="" /></div>
													    		</div>
												    		</#list>
											    		</div>
											    	<#else>
											    		<div class="formrow formbar">
											    			<div class="bigerror"><center>No client bound with this publication....</center></div>
											    		</div>
											    	</#if>
										    		<div class="formrow submitcenter">
										    			<center><@s.submit value="Create/Update Revenue" align="center"/></center>
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
	$("#htrevenuemenu").attr("class","selected");
	$("#revenuecreate_date").datepicker({
		changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
		dateFormat: "MM yy"
	});
	$("#revenuecreate_publication").change(function(){
		$("#client_info").remove();
	});
});
</script>
</body>	
</html> 