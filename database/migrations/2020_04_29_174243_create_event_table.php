<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEventTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('type_event')->nullable();
            $table->string('title')->nullable();
            $table->date('tgl_post')->nullable();
            $table->date('tgl_event')->nullable();
            $table->integer('member_id')->nullable();
            $table->string('kuota')->nullable();
            $table->string('type_berbayar')->nullable();
            $table->string('content')->nullable();
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
        Schema::dropIfExists('event');
    }
}
