<div class="httopmenu">
	<div class="httopmenugroup">
		<#--
		<div class="htleftmenu">
			<ul class="menu">
			</ul>
		</div>
		-->
		<div class="htrightmenu">
			<ul class="menu">
				<!-- li id="hthomemenu"><a href="admin">Home</a></li -->
				<li id="htusermenu"><a href="${webroot}graphic/usershow">User</a>
					<div>
						<ul class="single">
							<li><a class="parent" href="${webroot}graphic/usershow">Show Users</a></li>
							<li><a class="parent" href="${webroot}graphic/usercreate">Create User</a></li>
						</ul>
					</div>
				</li>
				<li id="htimagecategorymenu"><a href="${webroot}graphic/imagecategoryshow">Image</a>
					<div>
						<ul class="single">
							<li id="htimagetagsmenu"><a href="${webroot}graphic/imagetagsshow">Category</a>
								<div>
									<ul class="single">
										<li><a class="parent" href="${webroot}graphic/imagetagsshowall">Show Categories</a></li>
										<li><a class="parent" href="${webroot}graphic/imagetagssave">Create Category</a></li>
									</ul>
								</div>
							</li>
							<li id="hteventmenu"><a href="${webroot}graphic/eventshow">Event</a>
								<div>
									<ul class="single">
										<li><a class="parent" href="${webroot}graphic/eventshowall">Show Event</a></li>
										<li><a class="parent" href="${webroot}graphic/eventsave">Create Event</a></li>
									</ul>
								</div>
							</li>
							<li id="htimagemenu"><a href="${webroot}graphic/imageshow">Image</a>
								<div>
									<ul class="single">
										<li><a class="parent" href="${webroot}graphic/inactiveimages">Inactive Images</a></li>
										<li><a class="parent" href="${webroot}graphic/imageupload">Upload Image</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>	
			</ul>
		</div>
	</div>
</div> 