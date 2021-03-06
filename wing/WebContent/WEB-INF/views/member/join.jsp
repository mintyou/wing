<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script
		src="http://www.bootstrapstage.com/demo/sb-admin-2/js/jquery-1.11.0.js"></script>

<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please Sign In</h3>
					</div>
					<div class="panel-body">
				
						<form action="html/result.html" name="frm" id="frm">
							<p>id : <input type="text" name="id" id="id"> </p>
							<p>pw : <input
								type="password" name="pw" id="pw"> 
								<input type="button"
								id="login" value="전송" class="btn btn-lg btn-success btn-block">
								
							</p>
						</form>
						<div id="name"></div>
						<input type="button" id="join" value="회원가입">
					</div>
				</div>
			</div>
		</div>
		<div id="join"></div>
	</div>
	
	
<script type="text/javascript" src="../js/member.js">
</script>
<script type="text/javascript">
$(function() {
	$('#join').load(join.html);
});
</script>
</body>
</html>
