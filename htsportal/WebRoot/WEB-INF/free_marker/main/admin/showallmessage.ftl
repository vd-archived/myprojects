<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Show all user message details: HT SYNDICATION</title>
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
										<div align="center" style="display: block; min-height: 600px;">
											<h1 class="postheader">All Contact Us Message</h1>
											 <div class="box">
											  	<@s.actionerror/>
											  	<table width="100%" border="0" cellspacing="2" cellpadding="2" class="reportviewtable">
												  <tr class="reportviewhead">
												    <th width="100px;">Name</th>
												    <th>Subject</th>
												    <th>Message</th>
												    <th width="150px;">Date</th>
												    <th>&nbsp;</th>
												  </tr>
												  <#if messageList??>
													<#list messageList as x>
														<tr class="myrow" refid="${x.id}" style="cursor: pointer;">
															<td>${x.firstname} ${x.lastname!""}</td>
															<td>${x.subject}</td>
														    <td>
																<#if x.message?length &lt; 80>
																	${x.message}
																<#else>
																	${x.message?substring(0,80)} ...
																</#if>
														    </td>
														    <td>${x.createdate}</td>
														    <td style="top: 0;"><a href="deletemessage?id=${x.id}"><img src="${webroot}admin/images/delete.png" /></a></td>
													    </tr>
													    <tr style="background-color: #ffffff;">
													    	<td colspan="4">
													    		<div class="hiddendetails" id="${x.id}" style="display: none;">
													    			<div align="center" class="box_contentheading" style="width:100%;">Contact Us Message's Details</div>
													    			<hr width="100%" />
													    			<div style="float:left;padding-right:20px;padding-left:20px;padding-top:5px;padding-bottom:5px;">
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Name:</div> ${x.firstname} ${x.lastname!""}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Email:</div> ${x.email!""}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Website:</div> ${x.website!""}</div>
																		<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Contact No.:</div> ${x.contactno!""}</div>
													    			</div>
													    			<div style="float:left;padding-right:20px;padding-left:200px;padding-top:5px;padding-bottom:5px;">
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Subject:</span> ${x.subject!""}</div>
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Date:</span> ${x.createdate!""}</div>
													    			</div>
													    			<div style="clear: both"></div>
													    			<hr width="100%" />
													    			<div align="left" class="box_contentheading" style="width:100%;padding-right:20px;padding-left:20px;">Contact Us Message</div>
													    			<div style="padding-right:20px;padding-left:20px;padding-top:10px;padding-bottom:20px;">${x.message}</div>
													    		</div>
													    	</td>
													    	<td>&nbsp;</td>
													    </tr>
													</#list>
												  </#if>
												  <tr class="reportviewhead">
												  	<td colspan="6">&nbsp;</td>
												  </tr>
												</table>
											  </div>
											</div>
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
	<script src="${webroot}admin/js/htadmin.js"></script>
	<script>
	    $(".myrow").click(function () {
	      $("#"+($(this).attr('refid'))).slideToggle("slow");
	    });
	</script>
	<script>
	$(document).ready(function($) {
		$("#htusermessagemenu").attr("class","selected");
	});
	</script>
</body>	
</html> 