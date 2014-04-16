<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Image Detail">
<@design.search_template page_title=page_title>
<#list documents as document>
<div class="row image-desc">
	<div class="col-xs-12 col-sm-6">
		<img title="${document.getFieldValue("title")!"HT Syndication"} ${document.getFieldValue("details")!""}" src="${webroot}loadimage?cat=MEDIUM&filename=${document.getFieldValue("name")}.jpg" class="thumbnail" />
	</div>
	<div class="col-xs-12 col-sm-6">
		<h1>${document.getFieldValue("title")!"HT Syndication"}</h1>
		<div class="img-detail">
		  <strong>Image ID: </strong>
		  <span>${document.getFieldValue("name")}</span>
		</div>
		<#if document.getFieldValue("capturedate")??>
		<div class="img-detail">
		  <strong>Capture Date: </strong>
		  ${document.getFieldValue("capturedate")?date}
		</div>
		</#if>
		<#if document.getFieldValue("author")??>
		<div class="img-detail">
		  <strong>Author: </strong>
		  <span>${document.getFieldValue("author")}</span>
		</div>
		</#if>
		<#if document.getFieldValue("tags")??>
			<div class="img-detail">
			  <strong>Tags: </strong>
			  <span>
			  	<#list document.getFieldValues("tags") as tag>
			  	<a href="${webroot}images/${freemarkerUtil.getEncodeParameter(tag)}" class="label label-primary">${tag}</a>
			  	</#list>
			  </span>
			</div>
		</#if>
		<#if document.getFieldValue("event")??>
			<div class="img-detail">
			  <strong>Event: </strong>
			  <span>${document.getFieldValue("event")}</span>
			</div>
		</#if>
		<#if document.getFieldValue("copyright")??>
			<div class="img-detail">
			  <strong>Copyright: </strong>
			  <span>&copy; ${document.getFieldValue("copyright")}</span>
			</div>
		</#if>
		
		<#if document.getFieldValue("details")??>
			<h4>Description</h4>
			<p class="text-justify">${document.getFieldValue("details")}</p>
		</#if>
	</div>
</div>
</#list>
<#if similarByTitle?? && (similarByTitle?size > 0) >
<div class="row">
	<div class="col-xs-12">
		<h4>Similar By Title | <a href="${webroot}images/?filterkeyword=${name}" class="label label-primary">See All</a></h4>
	</div>
	<#list similarByTitle as document>
	<div class="col-xs-12 col-sm-2">
		<div class="thumbnail-div">
	  		<img title="${document.getFieldValue("title")!"HT Syndication"} ${document.getFieldValue("details")!""}" src="${webroot}loadimage?cat=THUMB&filename=${document.getFieldValue("name")}.jpg" class="thumbnail" />
	  	</div>
	</div>
	</#list>
</div>
</#if>

<#if similarByEvent?? && (similarByEvent?size > 0) >
<div class="row">
	<div class="col-xs-12">
		<h4>Similar By Event | <a href="${webroot}images/?event=${eventName}" class="label label-primary">See All</a></h4>
	</div>
	<#list similarByEvent as document>
	<div class="col-xs-12 col-sm-2">
		<div class="thumbnail-div">
	  		<img title="${document.getFieldValue("title")!"HT Syndication"} ${document.getFieldValue("details")!""}" src="${webroot}loadimage?cat=THUMB&filename=${document.getFieldValue("name")}.jpg" class="thumbnail" />
	  	</div>
	</div>
	</#list>
</div>
</#if>
</@design.search_template>