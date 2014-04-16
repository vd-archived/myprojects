<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "HT News Services">
<@design.page_template page_title=page_title>
<h2 class="page-heading">${page_title}</h2>
<img src="${webroot}images/competition.jpg" class="pull-right" />
</@design.page_template>


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
										<div style="display: block;">
											<div class="box_header" style="margin-bottom: 10px; display:block;"><h2 class="postheader" style="padding-left: 0px;">Subscription</h2></div>
											<div class="boxwithshadow" >
												<@s.actionerror />
												<br />
												<@s.form action="subscription">
													<@s.textfield label="Number of Images/Articles required? (Per Month)" name="articlecount" required="true" cssStyle="border-width:2px;" />
													<@s.radio label="Where will the content be reproduced?" name="contentreproduced" list=["Print Publication", "Website", "both" ] />
													<@s.textfield label="Publication Name" name="publicationname" required="true" cssStyle="border-width:2px;" />
													<@s.textfield label="Circulation of the Publication" name="publicationcirculation" required="true" cssStyle="border-width:2px;" />
													<@s.textarea label="Other Details" name="otherdetails" rows=5 cols=28 required="true" cssStyle="border-width:2px;" />
													<@s.textfield label="Name of the company" name="companyname" required="true" cssStyle="border-width:2px;" />
													<@s.textarea label="Address" name="address" rows=5 cols=28 required="true" cssStyle="border-width:2px;" />
													<@s.textfield label="Email" name="email" required="true" cssStyle="border-width:2px;" />
													<@s.textfield label="Phone Number" name="phonenumber" required="true" cssStyle="border-width:2px;" />
													<@s.textfield label="Country" name="country" required="true" cssStyle="border-width:2px;" />
													<@s.textarea label="Message" name="message" rows=5 cols=28 required="true" cssStyle="border-width:2px;" />
													<@s.submit value="Submit" cssStyle="background-color:#84cbdf; color:white;"/>
												</@s.form>
												<div class="cleared"></div>
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