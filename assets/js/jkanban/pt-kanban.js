$(document).ready(function () {
  $.ajax({
    type: 'GET',
    url: 'module/project/kanban.board.php',
    success: function (data) {
      var kanban1 = new jKanban({
        element: '#demo1',
        boards: data
      });
    }
  });
});
