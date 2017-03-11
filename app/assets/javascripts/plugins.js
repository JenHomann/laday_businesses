$(document).on('turbolinks:load',function(){
  $('select.select2').select2({placeholder: 'Select Categories'});

  if($('[id^=DataTables_Table]').length == 0){
    $('table#businesses').DataTable();
  }
});

$(document).on("turbolinks:before-cache", function() {
  if($('select.select2').length > 0){
    $('select.select2').select2('destroy');
  }
});