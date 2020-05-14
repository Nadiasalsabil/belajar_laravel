 
 @extends('layouts.master')

 @section('content')

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
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
        <li class="active">Detail</li>
      </ol>
    </section>


      <!-- Main content -->
      <section class="content">

        <!-- Default box -->
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-plus"></i> Detail Article</h3>
  
            <div class="box-tools pull-right">
            
              
            </div>
          </div>
          <div class="box-body">

            <form class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="box-body">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Article Title</label>
  
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="title" name="title" value="{{ $article->title }}" readonly>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Article Source</label>
  
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="source" name="source" value="{{ $article->sumber }}" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Post Date</label>
  
                    <div class="col-sm-10">
                      <input type="date" class="form-control" id="date_post" name="date_post" value="{{ $article->tgl_post }}" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Author</label>
  
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="author" name="author" value="{{ Auth::user()->employee->name}}" readonly>
                      <input type="hidden" class="form-control" id="author" name="member_id" value="{{ Auth::user()->employee->id}}" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Content</label>
  
                    <div class="col-sm-10">
                  <textarea class="textarea" name="content" placeholder="Place some text here"
                  style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">{{ $article->content }}</textarea>
                </div>
            </div>
                 


           

           
            <div class="form-group">
               <hr/>
                <div class="col-sm-11"></div>
                <div class="col-sm-1" style="padding-top: 30px;">
                    <center>
                   
                    <a href="{{ route('article.list') }}" class="btn btn-warning btn-md removelink" type="button">
                        <i class="glyphicon glyphicon-backward"></i> Cancel</a>
                    </center>
                </div>
               
              </div>


                <!-- /.box-footer -->
              </form>




           


           
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
