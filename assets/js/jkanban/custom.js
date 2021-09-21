var kanban1 = new jKanban({
  element: '#demo1',
  boards: [
  {
    'id': '_todo',
    'title': 'Todo (2)',
    'item': [{
      'title': `
      <a class="kanban-box" href="#"><span class="date">23/7/20</span><span class="badge badge-primary f-right">medium</span>
      <h6>Design Dashboard</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Themeforest, australia</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li hidden class="d-inline-block mr-3">
      <p class="f-12">+10</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    },
    {
      'title': `
      <a class="kanban-box" href="#"><span class="date">24/7/20</span><span class="badge badge-danger f-right">Argent</span>
      <h6>Test Sidebar</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Themeforest, australia</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li class="d-inline-block mr-3">
      <p class="f-12">+5</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/1.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/5.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    }
    ]
  },
  {
    'id': '_doing',
    'title': 'Doing (2)',
    'item': [{
      'title': `
      <a class="kanban-box" href="#"><span class="date">24/7/20</span><span class="badge badge-danger f-right">Argent</span>
      <h6>Test Sidebar</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Themeforest, australia</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li class="d-inline-block mr-3">
      <p class="f-12">+5</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/1.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/5.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    },
    {
      'title': `
      <a class="kanban-box" href="#"><span class="date">24/7/20</span><span class="badge badge-success f-right">Low</span>
      <h6>Dashboard issue</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Pixelstrap, New york</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li class="d-inline-block mr-3">
      <p class="f-12">+5</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/1.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/5.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    }
    ]
  },
  {
    'id': '_done',
    'title': 'Done (2)',
    'item': [{
      'title': `
      <a class="kanban-box" href="#"><span class="date">24/7/20</span><span class="badge badge-danger f-right">Argent</span>
      <h6>Test Sidebar</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Themeforest, australia</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li class="d-inline-block mr-3">
      <p class="f-12">+5</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/1.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/5.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    },
    {
      'title': `
      <a class="kanban-box" href="#"><span class="date">23/7/20</span><span class="badge badge-primary f-right">medium</span>
      <h6>Design Dashboard</h6>
      <div class="media"><img class="img-20 mr-1 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title="">
      <div class="media-body">
      <p>Themeforest, australia</p>
      </div>
      </div>
      <div class="d-flex mt-3">
      <ul class="list">
      <li><i class="fa fa-comments-o"></i>2</li>
      <li><i class="fa fa-paperclip"></i>2</li>
      <li><i class="fa fa-eye"></i></i></li>
      </ul>
      <div class="customers">
      <ul>
      <li class="d-inline-block mr-3">
      <p class="f-12">+10</p>
      </li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/3.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/1.jpg" alt="" data-original-title="" title=""></li>
      <li class="d-inline-block"><img class="img-20 rounded-circle" src="../assets/images/user/5.jpg" alt="" data-original-title="" title=""></li>
      </ul>
      </div>
      </div></a>
      `,
    }
    ]
  }
  ]
});
var removeBoard = document.getElementById('removeBoard');
removeBoard.addEventListener('click', function () {
  kanban3.removeBoard('_done');
});