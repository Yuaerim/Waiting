/**
 * 회원가입
 */
let check=false;
function formSubmit(){
	var form = document.signupForm;

	if(!form.userid.value || !check){
		alert("아이디를 확인해주세요");
		return;
	}
	form.submit();
}
	function checkId(u_id){
		check = false;
		if(u_id == ""){
			$("#idCheck_text").text("");
			return;
		}
		$.ajax({
			url:contextPath + "/User/UserCheckIdOK.us?u_id" + u_id,
			type:"get",
			dataType:"json",
			success:function(result){
				if(result.status == 'ok'){
					$("#idCheck_text").text("사용가능");
					$("#idCheck_text").css("color","blue");
					check = true;
				}else{
					$("#idCheck_text").text("사용불가");
					$("#idCheck_text").css("color","red");
				}
			},
			error:function(){
				console.log("오류");
			}
		});
	}

	$("input[name='userid']").keyup(function(){
		checkId($(this).val());
	})


