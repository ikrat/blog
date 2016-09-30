<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Old Blog Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/static/css/tabcontent.css" />
<script type="text/javascript" src="/static/js/tabcontent.js">
</script>
</head>
<body>

	<div id="templatemo_header_panel">
		<div id="templatemo_title_section">
			<h1>OLD BLOG</h1>
			Your tagline goes here
		</div>
	</div>
	<!-- end of templatemo header panel -->

	<div id="templatemo_menu_panel">
		<div id="templatemo_menu_section">
			<ul>
				<li><a href="/news" class="current">Home</a></li>
				<li><a href="#">Gallery</a></li>
				<li><a href="#">Categories</a></li>
				<li><a href="#">Archives</a></li>
				<li><a href="/about">About</a></li>
				<li><a href="/contact">Contact</a></li>
			</ul>
		</div>
	</div>
	<!-- end of menu -->

	<div id="templatemo_content_container">
		<div id="templatemo_content">
			<div id="templatemo_content_left">
				<jsp:include page="${currentPage }" />
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">

				<div class="templatemo_right_section">
					<div class="tag_section">
						<ul id="countrytabs" class="shadetabs">
							<li><a href="/search" rel="search" class="selected">Search</a></li>
							<li><a href="/seatch" rel="category">Category</a></li>
							<li><a href="/search" rel="archive">Archive</a></li>
						</ul>
					</div>

					<div class="tabcontent_section">
						<div id="search" class="tabcontent">
							<form method="get" action="#">
								<input class="inputfield" name="searchkeyword" type="text"
									id="searchkeyword" /> <input type="submit" name="submit"
									class="button" value="Search" />
							</form>
						</div>

						<div id="category" class="tabcontent">
							<ul>
								<li><a href="#">Lorem ipsum</a></li>
								<li><a href="#">Duis mollis</a></li>
								<li><a href="#">Maecenas adipiscing</a></li>
								<li><a href="#">Nunc blandit orci</a></li>
								<li><a href="#">Cum sociis natoque</a></li>
							</ul>
						</div>

						<div id="archive" class="tabcontent">
							<ul>
								<li><a href="#">January 2009</a></li>
								<li><a href="#">December 2008</a></li>
								<li><a href="#">November 2008</a></li>
								<li><a href="#">October 2008</a></li>
								<li><a href="#">September 2008</a></li>
							</ul>
						</div>
					</div>

					<script type="text/javascript">
						var countries = new ddtabcontent("countrytabs")
						countries.setpersist(true)
						countries.setselectedClassTarget("link") //"link" or "linkparent"
						countries.init()
					</script>
					<!--- end of tag -->
				</div>


				<div class="templatemo_right_section">
					<h2>Popular Posts</h2>
					<ul>
						<li><a href="#">Quisque dictum pharetra neque</a></li>
						<li><a href="#">Aliquam pretium porta odio</a></li>
						<li><a href="#">Maecenas adipiscing</a></li>
						<li><a href="#">Vivamus vestibulum condimentum</a></li>
						<li><a href="#">Cum sociis natoque</a></li>
					</ul>
				</div>

				<div class="templatemo_right_section">
					<h2>Archives</h2>
					<ul>
						<li><a href="#">January 2024</a></li>
						<li><a href="#">December 2023</a></li>
						<li><a href="#">November 2023</a></li>
						<li><a href="#">October 2023</a></li>
						<li><a href="#">September 2023</a></li>
					</ul>
				</div>

				<div class="templatemo_right_section">
					<h2>Recent Comments</h2>
					<ul>
						<li>Lorem Ipsum on <a href="#">Donec mollis aliquet</a></li>
						<li>Consectetuer on <a href="#">Suspendisse a nibh</a></li>
						<li>Sed on <a href="#">Pellentesque vitae magna</a></li>
						<li>Vitae Neque on <a href="#">Nunc blandit orci sit amet</a></li>
						<li>Donec Mollis on <a href="#">Maecenas adipiscing</a></li>
					</ul>
				</div>

			</div>
			<!-- end of right content -->
		</div>
		<!-- end of content -->
	</div>
	<!-- end of content container -->

	<div id="templatemo_bottom_panel">
		<div id="templatemo_bottom_section">
			<div class="templatemo_bottom_section_content">
				<h3>Partner Links</h3>
				<ul>
					<li><a href="#">Mauris congue felis at nisi</a></li>
					<li><a href="#">Donec mattis rhoncus mi</a></li>
					<li><a href="#">Maecenas adipiscing</a></li>
					<li><a href="#">Nunc blandit orci</a></li>
					<li><a href="#">Cum sociis natoque</a></li>
				</ul>
			</div>

			<div class="templatemo_bottom_section_content">
				<h3>Other Links</h3>
				<ul>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Privacy</a></li>
					<li><a href="/about">About</a></li>
					<li><a href="/contact">Contact</a></li>
				</ul>
			</div>

			<div class="templatemo_bottom_section_content">
				<h3>About this blog</h3>
				<p>Vivamus laoreet pharetra eros. In quam nibh, placerat ac,
					porta ac, molestie non, purus. Curabitur sem ante, condimentum non,
					cursus quis, eleifend non, libero. Nunc a nulla.</p>
				<a href="http://validator.w3.org/check?uri=referer"><img
					style="border: 0; width: 88px; height: 31px"
					src="http://www.w3.org/Icons/valid-xhtml10"
					alt="Valid XHTML 1.0 Transitional" width="88" height="31"
					vspace="8" border="0" /></a> <a
					href="http://jigsaw.w3.org/css-validator/check/referer"><img
					style="border: 0; width: 88px; height: 31px"
					src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
					alt="Valid CSS!" vspace="8" border="0" /></a>
			</div>

		</div>
	</div>
	<!-- end of templatemo bottom panel -->

	<div id="templatemo_footer_panel">
		<div id="templatemo_footer_section">
			Copyright © 2024 <a href="#">Your Company Name</a>
			<!-- Credit: www.templatemo.com -->
		</div>
	</div>
</body>
</html>