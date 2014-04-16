<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "HT Syndication is South Asia's biggest syndication news agency with a vast collection of News, Images and Cartoons. Apart from Hindustan Times and Mint, HT Syndication disseminates a wide spectrum of licensed content from more than 200 publications. The content is packaged and syndicated to a broad range of global clients. HT Syndication also offers a rare collection of images and cartoons from Hindustan Times Archives">
<#assign script_content>
	$(function() {
		$( ".widgets-cols" ).sortable({
			connectWith: ".widgets-cols",
			handle: ".panel-heading",
			cancel: ".portlet-toggle",
			placeholder: "portlet-placeholder ui-corner-all",
			update: function(){
					$.cookie('widgets-items', getItems('.widgets-row'));
			}
		});
	
		$( ".panel" )
			.addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
			.find( ".panel-heading" )
				.addClass( "ui-widget-header ui-corner-all" )
				.find('.panel-title')
				.prepend( "<i class='fa fa-angle-down'></i>");
	
		$( ".panel-title i" ).click(function() {
			var icon = $( this );
			icon.toggleClass( "fa-angle-down fa-angle-up" );
			icon.closest( ".panel" ).find( ".panel-body" ).toggle();
		});
		// Get all items from a container
		function getItems(container) {
				var columns = [];
				$( container + " .widgets-cols" ).each(function( i ) {
					columns.push($(this).sortable('toArray').join(','));
				});
				return columns.join('|');
		}
		// Load items
		function loadItemsFromCookie(name) {
				if ( $.cookie(name) != null ) {
					renderItems($.cookie(name), '.widgets-row');
				}
		}
		 
		function renderItems(items, container) {
			var curr_columns = [];
			$( container + " .widgets-cols" ).each(function( i ) {
				curr_columns.push($(this));
			});
			var columns = items.split('|');
			for ( var c in columns ) {
				if ( columns[c] != '' ) {
						var items = columns[c].split(',');
						for ( var i in items ) {
							$(container + " #" + items[i]).appendTo(curr_columns[c]);
						}
				}
			}
		}
		loadItemsFromCookie('widgets-items');
	});
</#assign>

<@design.home_template page_title=page_title embed_script=script_content script_tags=["js/jquery-ui.js", "js/jquery.cookie.js"] css_tags=[]>
<div class="row widgets-row">
	<#if widgetPanels?? && (widgetPanels?size > 0)>
		<#list widgetPanels as widgetPanel>
			<div class="col-lg-4 widgets-cols">
				<div id="panel${widgetPanel.uniequeID?c}" class="panel panel-primary handle">
					<div class="panel-heading">
						<h3 class="panel-title"><a href="${webroot}articles/${freemarkerUtil.getEncodeParameter(widgetPanel.headline)}">${widgetPanel.headline}</a></h3>
					</div>
					<div class="panel-body">
						<ul class="nav nav-tabs">
							<#if (widgetPanel.publicationTabs?size > 0)>
								<#list widgetPanel.publicationTabs as publicationTab>
									<li<#if publicationTab_index == 0> class="active"</#if>>
										<a href="#${publicationTab.id?c}" data-toggle="tab" title="${publicationTab.name}">${publicationTab.shortname}</a>
									</li>
								</#list>
							</#if>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<#list widgetPanel.publicationTabs as publicationTab>
								<div class="tab-pane active" id="${publicationTab.id?c}">
									<#list publicationTab.articles as article>
										<div class="s-news">
											<div class="s-title"><a href="${webroot}article/${freemarkerUtil.getEncodeParameter(article.headline, true)}/${article.id}">${article.headline}</a></div>
											<div class="s-intro">
												<a href="${webroot}articles/?source=${freemarkerUtil.getEncodeParameter(article.source)}">(${article.source})</a>
											</div>
											<div class="s-story">
												<#list article.news as news>
													${news}
												</#list>
											</div>
										</div>
									</#list>
								</div>
							</#list>
						</div>
					</div>
				</div>
			</div><!-- /.col-lg-4 -->
		</#list>
	<#else>
		<div class="blog postcontent">
			<div class="notfound" align="center">Sorry! No data found...</div>
		</div>
	</#if>
</div><!-- /.row -->


<div class="row featurette">
	<div class="col-md-7">
		<h2 class="featurette-heading">
			And lastly, this one.
			<span class="text-muted">Checkmate.</span>
		</h2>
		<p class="lead">Donec ullamcorper nulla non metus auctor fringilla.
			Vestibulum id ligula porta felis euismod semper. Praesent commodo
			cursus magna, vel scelerisque nisl consectetur. Fusce dapibus,
			tellus ac cursus commodo.</p>
	</div>
	<div class="col-md-5">
		<img class="featurette-image img-responsive" data-src="holder.js/500x500/auto"
			alt="Generic placeholder image" />
	</div>
</div>
</@design.home_template>  