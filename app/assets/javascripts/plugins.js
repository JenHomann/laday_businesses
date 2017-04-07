Decl.select('select[data-uses-select2]', function(scope) {
  scope.match(function(element) {
    var placeholder = $(element).data('placeholder');
    $(element).select2({placeholder: placeholder});
  });

  scope.unmatch(function(element) {
    var select2 = $(element).data('select2');

    if(select2) {
      select2.destroy();
    }
  });
});

Decl.select('table[data-uses-datatable]', function(scope) {
  scope.match(function(element) {
    $(element).DataTable();
  });

  scope.unmatch(function(element) {
    var datatable = $(element).data('datatable');

    if(datatable) {
      datatable.destroy();
    }
  });
});