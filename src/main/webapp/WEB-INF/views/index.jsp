<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
	<title>Demo</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/project.css"/>"/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-responsive.css"/>"/>
	
	<!--[if lt IE 9]>
	<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a href="<c:url value="/"/>" class="brand"><div>Demo</div></a>
			</div>
		</div>
	</div>

	<div class="container-fluid">
	<h2>Demo Application <small>Showcase the different between implementation</small></h2>
	
	<hr/>	
	<div class="row-fluid choose-role">
		<div class="span4">
	
			<h3 class="margin-bottom0"><a href="traditional/">Traditional Web Application Model</a></h3>
			<p>Spring MVC with a little javascript / JQuery</p>

			<h3 class="margin-bottom0"><a href="javascript/">Ajax Web Application Model</a></h3>
			<p>Javescript / JQuery without any framework</p>

			<h3 class="margin-bottom0"><a href="angular/">Javascript MVC w/ Angular</a></h3>
			<p>Javascript structure in MVC pattern using Angular framework</p>
		</div>
		<div class="span4 offset1">
			<h3 class="margin-bottom0">Database Information</h3>
			<dl class="dl-horizontal margin-top0">
				<dt>H2 Database</dt>
				<dd><a href="http://localhost:8082/">http://localhost:8082/</a></dd>
				<dt>jdbc url</dt>
				<dd><a href="http://localhost:8082/">jdbc:h2:mem:demo</a></dd>
				<dt>User Name</dt>
				<dd>sa</dd>
				<dt>Password</dt>
				<dd></dd>
			</dl>
			
			<h3 class="margin-bottom0">Presentation Slides</h3>
			<a href="slides">Web Application Development</a>
		</div>
	</div>
	
	</div>
	
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/resources/js/underscore.min.js"/>"></script>
	<script type="text/javascript">
		$.ajaxSetup({
			contentType: 'application/json; charset=utf-8',
			dataType: 'json'
		});	
	</script>
</body>
</html>