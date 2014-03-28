<div id="fixed_icons">
<a href="http://www.facebook.com/HTSyndication" id="facebook" title="Facebook Profile" target="_blank"></a><a href="http://twitter.com/HTSyndication" id="twitter" title="Follow us on Twitter" target="_blank"></a><a href="http://linkedin.com/groups/HT-Syndication-4876166" id="linkedin" title="Linkedin Profile" target="_blank"></a>
</div>
<header>	
	<#include "userloginbuttonbar.ftl">
    <div class="header1">
    	<#include "logo.ftl">
    	<#if user?? && user.role=1>
    		<#include "../../menus/adminmenu.ftl">
    	<#elseif user?? && user.role=2>
    		<#include "../../menus/graphicmenu.ftl">
    	<#elseif user?? && user.role=3>
    		<#include "../../menus/contentmenu.ftl">
    	<#elseif user?? && user.role=4>
    		<#include "../../menus/vendormenu.ftl">
    	<#elseif user?? && user.role=5>
    		<#include "../../menus/clientmenu.ftl">
    	<#elseif user?? && user.role=6>
    		<#include "../../menus/visitormenu.ftl">
		<#elseif user?? && user.role=7>
			<#include "../../menus/revenuemenu.ftl">
		</#if>
		<div class="cleared reset-box"></div>
		<div class="spot-bg-child"></div>
	</div>
</header> 