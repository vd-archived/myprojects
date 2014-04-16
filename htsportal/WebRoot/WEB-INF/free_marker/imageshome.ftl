<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "HT Syndication syndicating large amount of images including archival images">

<@design.home_template page_title=page_title>
<#if imageWidgets?? && (imageWidgets?size > 0)>
	<#list imageWidgets as imageWidget>
<div class="row<@design.alternate_print index=imageWidget_index first=" featurette" second=""/>">
	<div class="col-md-7<@design.alternate_print index=imageWidget_index first="" second=" move-right"/>">
		<h2 class="featurette-heading"><a href="${webroot}images/${freemarkerUtil.getEncodeParameter(imageWidget.name)}">${imageWidget.name}</a></h2>
		<p class="lead">${imageWidget.details!""}</p>
	</div>
	<div class="col-md-5">
		<div class="row thumbnail-row">
			<#list imageWidget.images as image>
				<div class="col-xs-6 col-sm-4 col-md-3"><a href="${webroot}images/${freemarkerUtil.getEncodeParameter(imageWidget.name)}" class="thumbnail home-image-thumbnail"><img src="${webroot}loadimage?cat=THUMB&filename=${image.name}.jpg" title="${image.title!""}"></a></div>
			</#list>
		</div>
	</div>
</div>
	</#list>
<#else>
<div class="blog postcontent">
	<div class="notfound" align="center">Sorry! No data found...</div>
</div>
</#if>
</@design.home_template>  