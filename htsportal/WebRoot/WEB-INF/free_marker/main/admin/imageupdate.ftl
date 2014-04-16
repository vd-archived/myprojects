<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Manage Event: HT SYNDICATION</title>
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
									<div class="box-body post-body" style="min-height: 580px;">
										<div style="display: block; padding:40px;">
											<#if imageFullVO??>
												<div class="show-sub-title" style="margin-bottom: 20px;">Update Image</div>
												<div class="divtable" style="width: 700px;">
													<@s.form action="imageupdate" theme="simple">
											    		<div class="formrow">
											    			<@s.actionerror/>
											    			<@s.hidden name="id" value='${imageFullVO.id?string("0")}' />
											    		</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Name: </span></div>
											    			<div class="formcolumn"><@s.textfield name="name" label="Name" value="${imageFullVO.name}" readonly="true" /></div>
											    			<div class="formcolumn1"><span class="formheader">Author</span></div>
											    			<div class="formcolumn"><@s.textfield name="author" label="Author" value="${imageFullVO.author!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Copyright: </span></div>
											    			<div class="formcolumn"><@s.textfield name="copyright" label="Copyright" value="${imageFullVO.copyright!''}" /></div>
											    			<div class="formcolumn1"><span class="formheader">Title</span></div>
											    			<div class="formcolumn"><@s.textfield  name="title" label="Title" value="${imageFullVO.title!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Details: </span></div>
											    			<div class="formcolumnfull"><@s.textarea rows=5 cols=64 name="details" label="Details" value="${imageFullVO.details!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Type: </span></div>
											    			<div class="formcolumn"><@s.select name="type" label="Type" list={"Photo":"Photo", "Illustration":"Illustration", "Cartoon":"Cartoon"} listKey="key" listValue="value" value="imageFullVO.type!''" /></div>
											    			<div class="formcolumn1"><span class="formheader">Orientation</span></div>
											    			<div class="formcolumn"><@s.select name="orientation" label="Orientation" list={"Landscape":"Landscape", "Portrait":"Portrait"} listKey="key" listValue="value" value="${imageFullVO.orientation!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Editorial: </span></div>
											    			<div class="formcolumn"><@s.textarea rows=2 cols=16 name="editorial" label="Editorial" value="${imageFullVO.editorial!''}" /></div>
											    			<div class="formcolumn1"><span class="formheader">Keywords</span></div>
											    			<div class="formcolumn"><@s.textarea rows=2 cols=16 name="keywords" label="Keywords" value="${imageFullVO.keywords!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Width (Pixel): </span></div>
											    			<div class="formcolumn"><@s.textfield size="5" name="width" label="Width (Pixel)" value="${imageFullVO.width!''}" /></div>
											    			<div class="formcolumn1"><span class="formheader">Height (Pixel)</span></div>
											    			<div class="formcolumn"><@s.textfield size="5" name="height" label="Height (Pixel)" value="${imageFullVO.height!''}" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Resolution (Pixels): </span></div>
											    			<div class="formcolumn"><@s.textfield name="resolution" label="Resolution (Pixel/Inch)" value="${imageFullVO.resolution!''}" /></div>
											    			<div class="formcolumn1"><span class="formheader">Status</span></div>
											    			<div class="formcolumn"><@s.select name="status" label="Status" list={"1":"Enable", "0":"Disable", "2":"Not Started"} listKey="key" listValue="value" value="imageFullVO.status" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow">
											    			<div class="formcolumn1"><span class="formheader">Event: </span></div>
											    			<div class="formcolumnfull"><@s.select name="eventid" label="Event" list=events listKey="id" listValue="name" value="${imageFullVO.event!''}" /></div>
											    		</div>
											    		
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div id="client_info" class="tableborder">
												    		<div class="formrow formbar">
												    			<div class="formcolumn1"><span class="formheader">Categories:</span></div>
												    		</div>
												    		<div class="formrow" id="imagetagsdiv">
													    		<#if imageFullVO.tagsDetails?? && (imageFullVO.tagsDetails?size > 0)>
														    		<#list imageFullVO.tagsDetails as tag>
														    			<div class="formtwocolumn">
																    		<div class="inline-block"><span class="formheader">${tag.value}</span><@s.hidden name="tagids" value="${tag.key}" /></div>
															    			<div class="inline-block"><input type="button" name="addanotherpub" id="addanotherpub" onClick="$(this).parent().parent().remove();" value="X" /></div>
														    			</div>
														    		</#list>
														    	</#if>
														    </div>
														    <br clear="all" />
											    		</div>
											    		<br clear="all" />
												    	<div class="formrow">
												    		<div class="formcolumn1"><@s.select name="tagsvalues" label="Image Category" list=imageTags listKey="id" listValue="name" /></div>
												    		<div class="formcolumn"><input type="button" name="addanothertag" id="addanothertag" onClick="insertAnotherTag();" value="Insert Category" /></div>
											    		</div>
											    		<div class="fromrowmargin">&nbsp;</div>
											    		<div class="formrow submitcenter">
											    			<center><@s.submit value="Update Image" align="center"/></center>
											    		</div>
													</@s.form>
												</div>
											</#if>
											
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
	$("#htsourcemenu").attr("class","selected");
});

function insertAnotherTag()
{
	var text = "<div class=\"formtwocolumn\"><div class=\"inline-block\"><span class=\"formheader\">" + $("#imageupdate_tagsvalues option:selected").text() + "</span><input type=\"hidden\" name=\"tagids\" value=\"" + $("#imageupdate_tagsvalues option:selected").val() + "\" id=\"imageupdate_tagids\"/></div><div class=\"inline-block\"><input type=\"button\" name=\"addanotherpub\" id=\"addanotherpub\" onClick=\"$(this).parent().parent().remove();\" value=\"X\" /></div></div>";
	$('#imagetagsdiv').append(text);
}
</script>
</body>	
</html> 