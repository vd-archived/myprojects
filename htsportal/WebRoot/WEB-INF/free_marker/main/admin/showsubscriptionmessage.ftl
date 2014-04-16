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
											<h1 class="postheader">All Subscription Message</h1>
											 <div class="box">
											  	<@s.actionerror/>
											  	<table width="100%" border="0" cellspacing="2" cellpadding="2" class="reportviewtable">
												  <tr class="reportviewhead">
												    <th width="100px;">Publication Name</th>
												    <th>Subject</th>
												    <th>Message</th>
												    <th width="150px;">Date</th>
												    <th>&nbsp;</th>
												  </tr>
												  <#if subscriptionVOList??>
													<#list subscriptionVOList as x>
														<tr class="myrow" refid="${x.id}" style="cursor: pointer;">
															<td>${x.publicationname}</td>
															<td>${x.emailsubject}</td>
														    <td>
																<#if x.message?length &lt; 80>
																	${x.message}
																<#else>
																	${x.message?substring(0,80)} ...
																</#if>
														    </td>
														    <td>${x.createdate}</td>
														    <td><a href="deletesubscription?id=${x.id}"><img src="${webroot}admin/images/delete.png" /></a></td>
													    </tr>
													    <tr>
													    	<td colspan="4">
													    		<div class="hiddendetails" id="${x.id}" style="display: none;">
													    			<div align="center" class="box_contentheading" style="width:100%;">Subscription Message Details</div>
													    			<hr width="100%" />
													    			<div style="float:left;padding-right:20px;padding-left:20px;padding-top:5px;padding-bottom:5px;">
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Publication Name:</div> ${x.publicationname}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Company Name:</div> ${x.companyname}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Address:</div> ${x.address}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Email:</div> ${x.email!""}</div>
																		<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Contact No.:</div> ${x.phone!""}</div>
													    			</div>
													    			<div style="float:left;padding-right:20px;padding-left:200px;padding-top:5px;padding-bottom:5px;">
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Subject:</span> ${x.emailsubject!""}</div>
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Date:</span> ${x.createdate!""}</div>
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Country:</span> ${x.country!""}</div>
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Other Details:</span> ${x.otherdetails!""}</div>
													    			</div>
													    			<div style="clear: both"></div>
													    			<hr width="100%" />
													    			<div style="float:left;padding-right:20px;padding-left:20px;padding-top:5px;padding-bottom:5px;">
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Article Required:</div> ${x.articlecount}</div>
													    				<div><div style="width:150px;display: inline-block; color: #f2f2f2;">Article Reproduced:</div> ${x.reproduced}</div>
													    			</div>
													    			<div style="float:left;padding-right:20px;padding-left:200px;padding-top:5px;padding-bottom:5px;">
													    				<div><span style="width:150px;display: inline-block; color: #f2f2f2;">Publication Circulation:</span> ${x.publicationcirculation!""}</div>
													    			</div>
													    			<div style="clear: both"></div>
													    			<hr width="100%" />
													    			<div align="left" class="box_contentheading" style="width:100%; padding-left:20px;padding-right:20px;">Subscription Message</div>
													    			<div style="padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:20px;">${x.message}</div>
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