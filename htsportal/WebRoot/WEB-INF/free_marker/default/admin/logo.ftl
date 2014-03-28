<div class="logo-img">
	<#if user?? && user.role?? && user.role==4>
		<img src="${webroot}admin/images/logo.png" title="HTSyndication" />
	<#else>
		<a href="${webroot}">
			<img src="${webroot}admin/images/logo.png" />
		</a>
	</#if>
</div> 