<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="header"></div>
	<div id="container">
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
	<div id="footer"></div>
<!--<jsp:include page="../global/footer.jsp"></jsp:include>	-->
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript">
$(function() {
	$("#header").load("${context}/global/header.nhn");
	$("#footer").load("${context}/global/footer.nhn");
	$("#login").click(function() {
		member.login();
	});
});
var member = {
		login : function(){
			$.ajax({
				url : '${context}/member/login.nhn',
				data: {
					id : $("#id").val(),
					pw : $("#pw").val()
				},
				success : function(data) {
					var result = '<h1>'+data.id+' 반갑습니다. 당신의 비번은 '+data.pw+'입니다. </h1>';
					result += '<input type="button" value="뒤로가기" onclick="member.goBack()" />';
					
					$("#container").html(result);
					
				},
				error : function(xhr,status,msg) {
					alert('상태:'+status+',설명:'+msg);
				}
			});
			
		    

		   
				
			
		},
		join : function() {
			location.href="join.html";
		},
		goBack : function() {
			location.href = '${context}/member/loginForm.nhn';
		}
		};

</script>

    
