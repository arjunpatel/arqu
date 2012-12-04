$(function(){
	$('#search').click(function(){
		var query_value = $("#big_input").val();
		$(this).attr("href", document.location + "search/result?utf8=✓&search%5Bword_contains%5D=" + query_value + "&search%5Buser_gender_contains%5D=&search%5Buser_age_gte%5D=&commit=Create+Search");
	})

	$('#big_input').keypress(function(){
		var query_value = $("#big_input").val();
		window.location = "search/result?utf8=✓&search%5Bword_contains%5D=" + query_value + "&search%5Buser_gender_contains%5D=&search%5Buser_age_gte%5D=&commit=Create+Search";
	})
})