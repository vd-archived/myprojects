<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Contact Us: HT SYNDICATION</title>
	<#include "../default/admin/head.ftl">
</head>
<body>
<div id="container">
	<div id="main" role="main">
	    <#include "../default/admin/header.ftl">
		<div class="box sheet">
			<div class="box-body sheet-body">
				<div class="layout-wrapper">
					<div class="content-layout">
						<div class="content-layout-row">
							<div class="layout-cell content">
								<div class="box post">
									<div class="box-body post-body">
										<div style="float: left; display: block; width: 48%;">
											<div class="box_header" style="margin-bottom: 10px; display:block;"><h2 class="postheader" style="padding-left: 0px;">Contact Us</h2></div>
											<div class="boxwithshadow">
												<div class="boldhead">Business Query</div>
												<div style="float:left;width: 50%;display: block;">
													<div class="namebiggerlight"><b>Rajesh Sharma</b></div>
													<div class="addressitalic">HT Media Limited</div>
													<div class="addressitalic">Park Centra Building</div>
													<div class="addressitalic">11th floor</div>
													<div class="addressitalic">Sector-30, Delhi-Jaipur Highway,</div>
													<div class="addressitalic">Gurgaon - 122001</div>
													<div><span style="display: inline-block;width: 50px;">Phone : </span><span class="phonenumber"style="display: inline-block;margin-left: 10px;">+91 99 101 55 993</span></div>
													<div><span class="emailwithlink"><a href="mailto:rajesh.sharma@hindustantimes.com">rajesh.sharma@hindustantimes.com</a></span></div>
												</div>
												<div style="clear: both;"></div>
											</div>
											<div style="clear: both;"></div>
										</div>
										<div style="float: right; width: 48%; display: block;">
											<div class="box_header" style="margin-bottom: 10px; display:block;"><h2 class="postheader" style="padding-left: 0px;">Write to us</h2></div>
											<div class="boxwithshadow" style="width: 440px;">
												<@s.actionerror />
												<br />
												<@s.form action="contactus">
												    <@s.textfield label="First Name" name="firstname" required="true" cssStyle="border-width:2px;" />
												    <@s.textfield label="Last Name" name="lastname" required="true" cssStyle="border-width:2px;" />
												    <@s.textfield label="Organisation Name" name="organisationName" required="true" cssStyle="border-width:2px;" />
												    <@s.textfield label="E-Mail" name="email" required="true" cssStyle="border-width:2px;" />
												    <@s.textfield label="Contact Number" name="contactno" required="true" cssStyle="border-width:2px;" />
												    <@s.textarea label="How can we help you?" name="message" rows=5 cols=28 required="true" cssStyle="border-width:2px;" />
												    <@s.submit value="Contact Us" cssStyle="background-color:#84cbdf; color:white;"/>
												</@s.form>
												
											</div>
										</div>
										<div class="cleared"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="cleared"></div>
				<#include "../default/admin/footer_copyright.ftl">
			</div>
		</div>
	</div>
</div>
<script>
$(document).ready(function($) {
	$("#htcontactmenu").attr("class","selected");
});
/*function checkcontactusform()
{
//	 required="1" req="1" print="First Name"
	var errornotfound = true;
	try{
		$("#contactus *[req='1']").each(function(i){
			if($.trim($(this).val())=="")
			{
				$(this).css("border-width", "1px");
				$(this).css("border-color", "red");
				errornotfound = false;
			}
			else
			{
				$(this).css("border-width", "none");
			}
		});
	}catch(error)
	{
		errornotfound = false;
	}
	return errornotfound;
}*/
</script>
</body>	
</html> 