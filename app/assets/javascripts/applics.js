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

$(document).ready(function() {
  $("input.date_picker").datepicker({format: 'dd.mm.yyyy'});
});

function updateForParticipanceNoReport(is_participance_no_report) {
  if (is_participance_no_report) {
    $('#applic_need_hotel').val('no_need');
    $('.participance_no_report_hide').hide();
  } else {
    $('.participance_no_report_hide').show();
  }
}

// applics page
$(document).ready(function() {
  $('#applic_participation_type').change(function() {
    var is_participance_no_report = this.value === 'participance_no_report';
    console.log('applic_participation_type change', is_participance_no_report);
    updateForParticipanceNoReport(is_participance_no_report);
  }); 
});
