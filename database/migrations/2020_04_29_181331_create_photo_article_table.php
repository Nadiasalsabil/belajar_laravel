<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePhotoArticleTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('photo_article', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('article_id')->nullable();
            $table->string('photo')->nullable();
            $table->string('source')->nullable();
            $table->string('photo_title')->nullable();
            $table->string('desc')->nullable();
            $table->timestamps();
            $table->timestamp('deleted_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('photo_article');
    }
}
