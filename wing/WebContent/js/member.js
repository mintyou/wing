/**
 * 회원관리 객체
 */



var member = {
login : function(){
	var id = $("#id").val();
    var pw = $("#pw").val();
    var frm = $("#frm").val();
    var tags = $("div").val();
    

    console.log(id, pw);
		
	
},
join : function() {
	location.href="join.html";
}
};
