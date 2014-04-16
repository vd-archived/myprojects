<#import "/WEB-INF/free_marker/themes/frontend.ftl" as design>
<#assign page_title = "Contact Us or Write to us">
<@design.page_template page_title=page_title>
<div class="row">
	<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
		<h3 class="page-heading1">Write to us</h3>
		<form role="form">
		  <div class="form-group">
		    <label for="firstname" class="control-label">First Name</label>
		    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
		  </div>
		  <div class="form-group">
		    <label for="lastname" class="control-label">Last Name</label>
		    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
		  </div>
		  <div class="form-group">
		    <label for="organisationName" class="control-label">Organization Name</label>
		    <input type="text" class="form-control" id="organisationName" name="organisationName" placeholder="Organization Name">
		  </div>
		  <div class="form-group">
		    <label for="email" class="control-label">E-Mail</label>
		    <input type="email" class="form-control" id="email" name="email" placeholder="Write your E-Mail Address">
		  </div>
		  <div class="form-group">
		    <label for="contactno" class="control-label">Contact No.</label>
		    <input type="text" class="form-control" id="contactno" name="contactno" placeholder="Your Contact Number">
		  </div>
		  <div class="form-group">
		    <label for="message" class="control-label">How can we help you?</label>
			<textarea id="message" name="message" class="form-control" rows="3" placeholder="Write your message"></textarea>
		  </div>
		  <div class="form-group">
		  	<button type="submit" class="btn btn-default">Submit Your Query</button>
		  </div>
		</form>
	</div>
	<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
		<h3 class="page-heading1">Contact Us</h3>
		<p>
			<address>
				<strong>HT Media Limited</strong><br />
				Park Centra Building, 11th floor, <br />
				Sector-30, Delhi-Jaipur Highway, <br />
				Gurgaon - 122001 <br />
				<abbr title="Sales Manager"><i class="fa fa-user"></i>:</abbr> Rajesh Sharma <br />
				<abbr title="Phone"><i class="fa fa-phone"></i>:</abbr> (+91) 99 101 55 993 <br />
				<abbr title="E-Mail"><i class="fa fa-envelope"></i>:</abbr> <a href="mailto:#">rajesh.sharma@hindustantimes.com</a>
			</address>
		</p>
	</div>
</div>
</@design.page_template> 