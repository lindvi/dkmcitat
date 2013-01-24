$(function() {


	$("#hideThis").hide();

	$("#wat").click(function(){
		if($("#hideThis").is(":visible")){
			$("#hideThis").slideUp();
		}else{
			$("#hideThis").slideDown();
		}
	});
});