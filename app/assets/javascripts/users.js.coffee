# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
        $('#questions').dataTable
          sPaginationType: "full_numbers"
          bJQueryUI: true
          "bLengthChange": false
          "bSort": true
          "iDisplayLength": 5
          "oLanguage": {
          "oPaginate": {
          "sFirst": "Pierwsza strona"
          "sPrevious": "<<"
          "sNext": ">>"
          "sLast": "Ostatnia strona"}
          "sInfoEmpty": "Pokazuje od  0 do 0 z 0 rekordow"
          "sEmptyTable": "Stworz pierwszy komentarz"
          "sSearch": "Szukaj:"
          "sZeroRecords": "Brak danych"
          "sInfo": "Pokazuje od  _START_ do _END_ z _TOTAL_ rekordow"}
