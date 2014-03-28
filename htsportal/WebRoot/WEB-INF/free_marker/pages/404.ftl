<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Page Not Found (404)">
<@design.template page_title=page_title>
<@design.frontend_logo_search/>
<h2 class="page-heading">
	Page not found
	<span class="text-muted">404 ERROR</span>
</h2>
<p>The page you are looking for is moved/deleted or not exits</p>
</@design.template> 