<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Article Search">
<@design.search_template page_title=page_title>
<#list documents as document>
<h1><a href="${webroot}article/${freemarkerUtil.getEncodeParameter(document.getFieldValue("headline"), true)}/${document.getFieldValue("id")}">${document.getFieldValue("headline")}</a></h1>
<div class="article-meta clearfix">
	<span class="badge">Posted On: ${document.getFieldValue("contentdate")?date}</span>
	<#if document.getFieldValue("byline")?has_content > 
		<a href="${webroot}articles/?byline=${freemarkerUtil.getEncodeParameter(document.getFieldValue("byline"))}" class="badge">Posted By:  ${document.getFieldValue("byline")}</a>
	</#if>
	<div class="pull-right">
		<#if document.getFieldValues("tags")??>
			<#list document.getFieldValues("tags") as tag>
				<a href="${webroot}images/?tags=${freemarkerUtil.getEncodeParameter(document.getFieldValue("tag"))}" class="label label-primary">${tag}</a>
			</#list>
		</#if>
		<#if document.getFieldValues("category")??>
			<#list document.getFieldValues("category") as category>
				<a href="${webroot}articles/${freemarkerUtil.getEncodeParameter(category)}" class="label label-primary">${category}</a>
			</#list>
		</#if>
		<#if document.getFieldValue("publication")?has_content >
			<a href="${webroot}articles/?publication=${freemarkerUtil.getEncodeParameter(document.getFieldValue("publication"))}" class="label label-success">${document.getFieldValue("publication")}</a> 
		</#if>
		<#if document.getFieldValue("source")?has_content > 
			<a href="${webroot}articles/?source=${freemarkerUtil.getEncodeParameter(document.getFieldValue("source"))}" class="label label-info">${document.getFieldValue("source")}</a>
		</#if>
	</div>
</div>
<p class="text-justify">
<#if (document.getFieldValues("news")?first?length > 1000)>
${document.getFieldValues("news")?first?substring(0, 450)?xhtml?replace("\n\n", "<br><br>")}
<#else>
${document.getFieldValues("news")?first?xhtml?replace("\n", "<br>")}
</#if>
<span class="label label-warning read-more"><a href="${webroot}article/${freemarkerUtil.getEncodeParameter(document.getFieldValue("headline"), true)}/${document.getFieldValue("id")}">Read More</a></span>
</p>
<hr>
</#list>
</@design.search_template> 