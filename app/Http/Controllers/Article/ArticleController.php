<?php

namespace App\Http\Controllers\Article;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Article;
use App\Model\Photoarticle;
use Illuminate\Support\Facades\Auth;
use DB;


class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {

        $article = Article::where('is_deleted', 1)->get();
        return view('article.index',['article' => $article]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
       
        
        return view('article.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $simpan = Article::create([ 
                'title'      => $request->title,
                'sumber'     => $request->source,
                'tgl_post'   => $request->date_post,
                'member_id'  => $request->member_id,
                'content'    => $request->content,
                'is_deleted' => 1,
        
        ]);

        $last_id = $simpan->id;

        

        for($i=0; $i<count($request->files); $i++){

            $files = [];
                    foreach ($request->file('files') as $file) {
                        if ($file->isValid()) {
                            $nama_file = time()."_".$file->getClientOriginalName();
                            $tujuan_upload = public_path('upload/article');
                            $file->move($tujuan_upload,$nama_file);
                
                            $files[] = [
                                'article_id'   => $last_id,
                                'photo'        => $nama_file,
                                'source'       => $request->source_image[$i],
                                'photo_title'  => $request->title_img[$i],
                                'desc'         => $request->img_desc[$i],

                            ];
                        }
                }

                Photoarticle::insert($files);
        }

      




        return redirect()->route('article.list')->with('sukses', 'Deleted!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $article = Article::findorfail($id);
        return view('article.detail',['article' => $article]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
