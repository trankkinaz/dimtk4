<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKuesionerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kuesioner', function (Blueprint $table) {
            $table->id('id_kuesioner');
            $table->string('pertanyaan');
            $table->integer('id_dimensi');
            $table->string('variabel')->nullable();
            $table->string('pila')->nullable();
            $table->string('pilb')->nullable();
            $table->string('pilc')->nullable();
            $table->string('pild')->nullable();
            $table->string('pile')->nullable();

            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kuesioner');
    }
}
