<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../global/header.jsp"></jsp:include>
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
<jsp:include page="../global/footer.jsp"></jsp:include>	
<script type="text/javascript" src="../js/member.js"></script>
<script type="text/javascript">
$(function() {
	$("#login").click(function() {
		member.login();
	});
});
var member = {
		login : function(){
			var id = $("#id").val();
		    var pw = $("#pw").val();
		    var frm = $("#frm").val();
		    var tags = $("div").val();
		    

		   location.href = "${context}/member/login.nhn";
				
			
		},
		join : function() {
			location.href="join.html";
		}
		};

</script>

    
