<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Image Search">

<#assign script_content>
$(function() {
	$('.thumbnail-div img.thumbnail').popover({
	  placement: 'bottom',
	  html: true,
	  trigger: 'hover',
	  content: function () {
	    return '<img src="${webroot}loadimage?cat=MEDIUM&filename=' + $(this).attr('data') + '.jpg" />';
	  }
	});
});
</#assign>


<@design.search_template page_title=page_title embed_script=script_content>
<div class="row">
	<#list documents as document>
	<div class="col-xs-12 col-sm-4 col-md-3">
		<div class="thumbnail-div">
	  		<img title="${document.getFieldValue("title")!"HT Syndication"} ${document.getFieldValue("details")!""}" src="${webroot}loadimage?cat=THUMB&filename=${document.getFieldValue("name")}.jpg" data="${document.getFieldValue("name")}" class="thumbnail" />
	  		<div class="text-center">
	  			<a href="${webroot}image/${freemarkerUtil.getEncodeParameter(document.getFieldValue("title")!document.getFieldValue("name"), true)}/${document.getFieldValue("name")}" class="label label-primary">View Details</a>
	  		</div>
	  	</div>
	</div>
	</#list>
</div>
</@design.search_template> 