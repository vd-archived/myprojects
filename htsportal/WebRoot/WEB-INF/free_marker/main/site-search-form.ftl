<div class="search-form">
<@s.form theme="simple" onsubmit="this.action='${webroot}search-site';this.submit();">
	<#if site_search_string??>
		<@s.textfield name="site_search_string" label="Site Search" onfocus="inputFocus(this)" onblur="inputBlur(this)" size="50" />
	<#else>
		<@s.textfield name="site_search_string" label="Site Search" value="Site Search" onfocus="inputFocus(this)" onblur="inputBlur(this)" size="50" />
	</#if>
	<span id="g-search-button" onclick="$(this).parent().submit();">&nbsp;</span>
	<#if site_search_type??>
		<@s.radio name="site_search_type" list={"all":"All", "image":"Image", "article":"Article"} listKey="key" listValue="value" />
	<#else>
		<@s.radio name="site_search_type" list={"all":"All", "image":"Image", "article":"Article"} listKey="key" listValue="value" value="'all'" />
	</#if>
</@s.form>
</div> 