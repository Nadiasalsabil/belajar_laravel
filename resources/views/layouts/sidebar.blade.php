 <!-- Left side column. contains the sidebar -->
 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ asset('asset_be/dist/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Internal Configuration</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-id-badge"></i>Users</a></li>
            <li><a href="index2.html"><i class="fa fa-rocket"></i>Vision & Mision</a></li>
            <li><a href="index2.html"><i class="fa fa-address-card"></i>Community Profile</a></li>
            <li><a href="index2.html"><i class="fa fa-group"></i>Community Structure</a></li>
            <li><a href="index2.html"><i class="fa fa-picture-o"></i>Gallery</a></li>
          </ul>
        </li>

        <li class="treeview">
            <a href="#">
              <i class="fa fa-file"></i> <span>Event ICC Configuration</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <li><a href="index.html"><i class="fa fa-calendar"></i>Event ICC</a></li>
              <li><a href="index2.html"><i class="fa fa-bullhorn"></i>Event Registration Data</a></li>
            </ul>
          </li>
       
        <li><a href="{{route('article.list')}}"><i class="fa fa-keyboard-o"></i> <span>Article</span></a></li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-phone"></i> <span>Contact</span></a></li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-envelope-o"></i> <span>Suggestions & Messages</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>