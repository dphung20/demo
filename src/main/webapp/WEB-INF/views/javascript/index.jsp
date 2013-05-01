<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h2>Javascript <small>todo</small></h2>
	
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