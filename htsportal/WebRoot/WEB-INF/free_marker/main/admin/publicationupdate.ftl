<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Update the publication details: HT SYNDICATION</title>
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
											<div class="show-sub-title">Update Publication</div>
									    		<div class="divtable" style="width: 600px;">
													<@s.form action="publicationupdate">
											    		<@s.actionerror/>
											    		<@s.hidden name="pubID" />
											    		<@s.textfield name="pubShortname" label="Short Name" readonly="true" />
											    		<@s.textfield name="pubName" label="Name" />
											    		<@s.checkbox  name="pubExclusive" label="Exclusive" />
											    		<@s.checkbox  name="pubNewsTicker" label="News Ticker" />
														<@s.textarea rows=5 cols=40 name="pubDetails" label="Details" />
														<@s.textfield name="pubWeburl" label="Website URL" />
														<@s.textfield name="pubemail" label="Website E-Mail" />
														<@s.textfield name="pubaddress" label="Address" />
														<@s.textfield name="pubphone" label="Phone" />
														<@s.textfield name="pubfax" label="Fax" />
														<@s.textfield name="pubcontactperson1" label="Contact Person 1" />
														<@s.textfield name="pubcontactperson2" label="Contact Person 2" />
														<@s.textfield name="pubcontactperson3" label="Contact Person 3" />
														<@s.textfield name="pubotherinfo" label="Other Information" />
														<@s.select name="pubstatus" label="Status" list=statusList listKey="key" listValue="value" />
														<@s.select name="pubowner" label="Owner" list=users listKey="username" listValue="firstName + ' ' + lastName" />
														<@s.submit value="Update Publication" align="center"/>
													</@s.form>
												</div>
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
	$("#htcontentparentmenu").attr("class","selected");
});
</script>
</body>	
</html> 