<#if !(user?? && user.firstName??)>
	<div class="login-section">
		<div class="login-inner">
			<p>Are you a member? Sign in or <a href="${webroot}contactus">Contact Us</a></p>
			<form id="authenticateuser" name="authenticateuser" action="${webroot}access/authenticateuser.action" method="post" autocomplete="off">
					<label id="username_label">Username</label>
					<input id="top-username" title="Please enter your username" type="text" name="userName" class="top-input" size="15" />
					<label id="password_label">Password</label>
					<input id="top-password" title="Please enter your password" type="password" name="password" class="top-input" size="14" />
					<input type="submit" name="submit" class="csbutton-dark small submit" id="submit_button" value="Login" />
					<input type="reset" name="cancel" class="csbutton-dark small cancel" id="cancel_button" value="Cancel" />
			</form>
		</div>
	</div>
</#if> 