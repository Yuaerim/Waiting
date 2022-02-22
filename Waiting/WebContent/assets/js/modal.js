// form value값 변경
$('#submitBtn').on('mousedown',function(){
   $(document).ready(function(){
      $('#verRating').val($('input[name=rating]:checked').val());
      $('#verReview').val($('textarea#review').val());
	console.log($('#verRating').val());
	console.log($('#verReview').val());
   });
});
// 이게 form 자동 submit
$('#submitBtn').on('mouseup',function(){
   document.verSub.submit();
   // 모달 닫히는 거   
   $('#modalBox').modal("hide");
   $(".modal-backdrop").remove();
  
});