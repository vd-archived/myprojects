<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Publication Show-Case">
<#assign script_content>
$(function() {
	$("#toggle-btn").click(function(){
		$(".toggle-tr").slideToggle();
		if($(this).text() == "Show All") {
			$(this).text("Show Less");
		} else {
			$(this).text("Show All");
		}
	});
});
</#assign>

<@design.page_template page_title=page_title embed_script=script_content>
<h3>${page_title}</h3>
<br />
<div class="table-responsive">
<table class="table table-striped table-hover">
	<thead>
		<tr>
			<th style="min-width: 200px;">Name</th>
			<th>Introduction</th>
		</tr>
	</thead>
	<tbody>
		<#list publications as publication>
		<tr<#if publication.newsTicker!="yes"> class="toggle-tr init-hidden"</#if>>
			<td><a href="${webroot}articles/?publication=${freemarkerUtil.getEncodeParameter(publication.name)}">${publication.name}</a></td>
			<td>${publication.details}</td>
		</tr>
		</#list>
	</tbody>
</table>
<button id="toggle-btn" type="button" class="btn btn-primary">Show All</button>
</div>
</@design.page_template> 