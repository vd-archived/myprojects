<div class="httopmenu">
<div class="httopmenugroup">
		<div class="htleftmenu">
		   <ul class="navmenu">
	    	<li id="hthomemenu"><a href="${webroot}index">Home</a></li>
			<li id="htaboutmenu">
				<a class="parent" href="#">About Us</a>
				<ul class="navmenu">
					<li><a href="${webroot}whatweare">Who we are</a></li>
					<li><a href="#">What we do</a>
						<div>
							<ul>
								<li><a href="${webroot}news-aggregation">News Aggregation</a></li>
								<li><a href="${webroot}image-syndication">Image Syndication</a></li>
								<li><a href="${webroot}ht-mobile-content-services">Mobile Content Services</a></li>
								<li><a href="${webroot}ht-archives">HT Archives</a></li>
								<li><a href="${webroot}whatwedo">Other Services</a></li>
							</ul>
						</div>
					</li>
					<li><a href="${webroot}competitiveadvantage">Competitive advantage</a></li>
				</ul>
			</li>
			<li id="htarticlemenu"><a href="#">News</a>
				<ul>
					<li><a href="${webroot}publications">Publication</a></li>
					<li><a class="parent" href="#">Source</a>
						<div>
							<#include "source_menu.ftl">
						</div>
					</li>
					<li><a class="parent" href="#">Category</a>
						<div>
							<#include "category_menu.ftl">
						</div>
					</li>
					<li><a href="${webroot}astro">Astrology</a></li>
				</ul>
			</li>
			<li id="htimagemenu"><a href="#">Images</a>
				<#include "imagecategory_menu.ftl">
			</li>
			<li id="htsexclusive"><a href="${webroot}exclusive">HTS<font style="color: Red;font-size: 13px;font-style:  italic">exclusive</font></a></li>
			<li id="hthns"><a href="${webroot}hns">HTNS<font style="color: Red;font-size: 13px;font-style:  italic">Live</font></a></li>
			<li id="htcontactmenu"><a href="${webroot}contactus">Contact Us</a></li>
	    </ul>
	</div>
 </div>
</div> 