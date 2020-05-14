 
 @extends('layouts.master')

 @section('content')
 
 <!-- Content Wrapper. Contains page content -->
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Article
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Article</a></li>
        <li class="active">List</li>
      </ol>
    </section>


      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Article</h3>
  
            <div class="box-tools pull-right">
              <a href="{{ route('article.create') }}" class="btn btn-primary" role="button"><i class="fa fa-plus"></i> Add Article</a>
              
            </div>
          </div>
          <div class="box-body">
            <table id="example1" class="table table-bordered table-striped" style="padding-top:20px;">
              <thead>
              <tr>
                <th>No</th>
                <th>Title</th>
                <th>Post Date</th>
                <th>Author</th>
                <th>Action</th>
              </tr>
              </thead>
              <tbody>
                 @php(

                    $no = 1 
                 )
                  @foreach ($article as $data)

                    <tr>
                        <td> {{ $no++ }} </td>
                        <td> {{ $data->title }} </td>
                        <td> {{ $data->tgl_post }} </td>
                        <td> {{ $data->membersss->name }} </td>
                        <td>  <button class="btn btn-success btn-sm" type="button"><i class="glyphicon glyphicon-edit"></i></button>
                              <a href="" class="btn btn-danger btn-sm" type="button"><i class="glyphicon glyphicon-remove"></i></a>
                              <a href="{{route('article.show', $data->id)}}" class="btn btn-info btn-sm" type="button"><i class="fa fa-folder-open"></i></a>
                        </td>
                    </tr>
                  @endforeach
              </tbody>
            </table>
          </div>
          <!-- /.box-body -->
         
          <!-- /.box-footer-->
        </div>
        <!-- /.box -->
  
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
