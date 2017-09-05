<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductSamplesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_samples', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('product_id');
            $table->text('description');
            $table->string('sample_file_name');
            $table->string('sample_file_url');
            $table->timestamps();
            $table->foreign('product_id')->references('id')->on('products');

        });





    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_samples');
    }
}
