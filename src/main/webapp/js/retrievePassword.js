$(document).ready(function(){
	$("#usernameConfirm").click(function(){
		$(".inputUsername").hide();
		$(".question").show();
		$(".guide").css("background", "blue");
		$(".guide2").css("background", "linear-gradient(to right, blue, #00EEEE)");
	});
	$("#answerConfirm").click(function(){
		$(".guide").css("background", "blue");
		$(".guide2").css("background", "blue");
		$(".question").hide();
		$(".success").show();
	});
});