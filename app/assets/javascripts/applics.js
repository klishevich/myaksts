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

//js for sign up page

$(document).ready(function(){   
	$('#user_is_antok_member').click(function() {
	    if( $(this).is(':checked')) {
	        $("#antok_id_block").show();
	    } else {
	        $("#antok_id_block").hide();
	    }
	}); 
});

$(document).ready(function(){   
    if( $('#user_is_antok_member').is(':checked')) {
        $("#antok_id_block").show();
    } else {
        $("#antok_id_block").hide();
    }
});

$(document).ready(function(){
  $("input.date_picker").datepicker({format: 'dd.mm.yyyy'});
});
