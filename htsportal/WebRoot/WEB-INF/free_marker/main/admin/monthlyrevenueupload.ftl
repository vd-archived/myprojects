<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Montyly Revenue Upload: HT SYNDICATION</title>
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
											<div class="show-sub-title"><center>Montyly Revenue Upload</center></div>
									    	<div style="width: 700px;">
									    		<@s.form action="monthlyrevenueupload" theme="simple" enctype="multipart/form-data" method="post">
										    		<div class="formrow">
										    			<@s.actionerror/>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Upload Excel: </span></div>
										    			<div class="formcolumn"><@s.file id="1" label="Excel: " name="fileUpload" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" /></div>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1"><span class="formheader">Upload for: </span></div>
										    			<div class="formcolumn1"><@s.textfield name="date" label="Date" readonly="true" /></div>
										    		</div>
										    		<div class="formrow">
										    			<div class="formcolumn1">&nbsp;</div>
										    			<div class="formcolumn1"><@s.submit value="Submit" /></div>
										    		</div>
												</@s.form>
										  	</div>
										</div>
										<hr />
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
	$("#monthlyrevenueupload_date").datepicker({
		changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
		dateFormat: "MM yy",
		showOn: "button",
	    buttonImage: "${webroot}admin/images/calendar.gif",
	    buttonImageOnly: true,
	});
});
</script>
</body>	
</html> 