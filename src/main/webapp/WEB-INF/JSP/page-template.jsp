<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Old Blog Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="/static/css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/static/css/tabcontent.css" />
</head>
<body>

	<header>
		<jsp:include page="fragment/header.jsp" />
	</header>

	<div id="templatemo_content_container">
		<div id="templatemo_content">
			<div id="templatemo_content_left">
				<jsp:include page="${currentPage }" />
			</div>
			<!-- end of content left -->

			<jsp:include page="fragment/content-right.jsp" />
			<!-- end of right content -->
		</div>
		<!-- end of content -->
	</div>
	<!-- end of content container -->

	<footer>
		<jsp:include page="fragment/footer.jsp" />
	</footer>
	
<script src="/static/js/app.js"></script>
<script src="/static/js/messages.jsp"></script>	
<script src="/static/js/tabcontent.js"></script>
</body>
</html>