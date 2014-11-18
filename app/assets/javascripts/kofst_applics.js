function update_science_specific_field(element){
//    alert(element.value);
  var $el = $("#kofst_applic_science_specific_field_id");
  $el.empty(); // remove old options
  $.getJSON("/science_specific_fields/index?term=" + element.value,function(result){
    $.each(result, function(key, value){
       $el.append($("<option></option>")
          .attr("value", value.id).text(value.name));
    });
  });    

    // var newOptions = {"Option 1": "value1",
    //   "Option 2": "value2",
    //   "Option 3": "value3"
    // };

    // var $el = $("#kofst_applic_science_specific_field_id");
    // $el.empty(); // remove old options
    // $.each(newOptions, function(key, value) {
    //   $el.append($("<option></option>")
    //      .attr("value", value).text(key));
    // });    

};

    // var str1 = "t"
    // var res = str1.concat(element.id);
    // var price = element.getAttribute("price");
    // var total = element.value * price;
    // document.getElementById(res).innerHTML = total.toFixed(2);
    // <option value="1">Algebra</option>