$(document).ready(function(){   
	$('#applic_need_compensation').click(function() {
	    if( $(this).is(':checked')) {
	        $("#compensation_info_block").show();
	    } else {
	        $("#compensation_info_block").hide();
	    }
	}); 
});

$(document).ready(function(){   
    if( $('#applic_need_compensation').is(':checked')) {
        $("#compensation_info_block").show();
    } else {
        $("#compensation_info_block").hide();
    }
});