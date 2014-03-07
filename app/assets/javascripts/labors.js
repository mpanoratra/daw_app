jQuery(document).on("page:change", function(){
  $proj_sel = $("#project_id_");
  
  updateUnitSelect();
  $proj_sel.on("change", function(){
    updateUnitSelect();
  });
  $("#unit_select").on("change", function(){
    updateTaskSelect();
  });


});

function updateUnitSelect(){
  $unit_sel = $("#unit_select");
  var project_id = $("#project_id_").val();
  var getUnitsStr = "/projects/" + project_id + "/get_units";
  $.ajax({
      url: getUnitsStr
  }).done(function(data){
    $unit_sel.empty();
    $unit_sel.append($("<option selected disabled>Choose a unit:</option>"));
    var unit;
    for(unit = 0; unit< data.length; unit++)
    {
      $unit_sel.append($("<option></option>").attr("value", data[unit].id).text(data[unit].name_or_address));
    }
    updateTaskSelect();
  });
}

function updateTaskSelect(){
  $task_sel = $("#task_select");
  var unit_id = $("#unit_select").val();
  var getTasksStr = "/units/" + unit_id + "/get_tasks";
  $.ajax({
      url: getTasksStr
  }).done(function(data){
    $task_sel.empty();
    $task_sel.append($("<option selected disabled>Choose a task:</option>"));
    var task;
    for(task = 0; task< data.length; task++)
    {
      $task_sel.append($("<option></option>").attr("value", data[task].id).text(data[task].trade));
    }
  });
}
