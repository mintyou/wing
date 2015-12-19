<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="context" value="<%=request.getContextPath()%>"></c:set>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin 2 - Bootstrap Admin Theme</title>

<link
	href="http://www.bootstrapstage.com/demo/sb-admin-2/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="http://www.bootstrapstage.com/demo/sb-admin-2/css/plugins/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<link
	href="http://www.bootstrapstage.com/demo/sb-admin-2/css/sb-admin-2.css"
	rel="stylesheet">

<link
	href="http://www.bootstrapstage.com/demo/sb-admin-2/font-awesome-4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">

function goBack() {
	history.go(-1);
}

</script>    
</head>
<body>


	<h1>${member.name} 반갑습니다</h1>
	
	<input type="button" value="뒤로가기" onclick="goBack();" />
	


	<script
		src="http://www.bootstrapstage.com/demo/sb-admin-2/js/jquery-1.11.0.js"></script>
	<script
		src="http://www.bootstrapstage.com/demo/sb-admin-2/js/bootstrap.min.js"></script>

	<script
		src="http://www.bootstrapstage.com/demo/sb-admin-2/js/plugins/metisMenu/metisMenu.min.js"></script>

	<script
		src="http://www.bootstrapstage.com/demo/sb-admin-2/js/sb-admin-2.js"></script>
</body>
</html>
