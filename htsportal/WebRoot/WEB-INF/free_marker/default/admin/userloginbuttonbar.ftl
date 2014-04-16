<section class="top-main">
	<div class="top-overlay">
		<div id="top-date">
			<#if user?? && user.firstName??>
				<#if user?? && user.role=1>
					<a href="${webroot}access/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=2>
					<a href="${webroot}graphic/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=3>
					<a href="${webroot}content/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=4>
					<a href="${webroot}vendor/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=5>
					<a href="${webroot}client/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=6>
					<a href="${webroot}visitor/" style="color: #c0c0c0; ">My Panel</a>
				<#elseif user?? && user.role=7>
					<a href="${webroot}revenue/" style="color: #c0c0c0; ">My Panel</a>
				</#if>
			</#if>
		</div>
		<div class="top-contact">
			<#if user?? && user.firstName??>
			   <a href="${webroot}access/logout">Logout [${user.firstName}&nbsp;${user.lastName}]</a>
			<#else>
				<div style="float:left;" id="top-member" class="show-top top-member"  title="Member access" >Member login</div>
			</#if>
		</div>
	</div>
</section> 