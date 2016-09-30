<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
					<input class="inputfield" name="searchkeyword" type="text" id="searchkeyword" /> <input type="submit" name="submit" class="button"
						value="Search" />
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