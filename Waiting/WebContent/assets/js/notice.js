$(document).ready(function(){
$(".sec").eq(0).click(function(){
$(this).next(".collapsable").slideToggle();
$(this).children(".section").text("회원가입&회원정보 수정/확인/탈퇴 방법");
$(this).children(".fa").toggleClass("fa-minus");

});
$(".sec").eq(1).click(function(){
$(this).next(".collapsable").slideToggle();
$(this).children(".section").text("챌린지 이용 방법");
$(this).children(".fa").toggleClass("fa-minus");
});
$(".sec").eq(2).click(function(){
$(this).next(".collapsable").slideToggle();
$(this).children(".section").text("챌린지 인증 현황/이전기록 확인 방법");
$(this).children(".fa").toggleClass("fa-minus");
});
$(".sec").mouseenter(function(){
$(this).addClass("");
$(this).children(".section").text("클릭!");
$(this).next(".collapsable").css({"width":"800px"});
$(this).next(".collapsable").css({"hegiht":"75px"});
});
$(".sec").mouseleave(function(){
$(this).removeClass("z-depth-4");
$(".sec").eq(0).children(".section").text("회원가입&회원정보 수정/확인/탈퇴 방법");
$(".sec").eq(1).children(".section").text("챌린지 이용 방법");
$(".sec").eq(2).children(".section").text("챌린지 인증 현황/이전기록 확인 방법");
$(this).next(".collapsable").css({"width":"800px"});

});

});