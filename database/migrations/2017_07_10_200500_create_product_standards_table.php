<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductStandardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_standards', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('product_id');
            $table->float('min_size',8,2);
            $table->float('max_size',8,2);
            $table->string('format');
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
        Schema::dropIfExists('product_standards');
    }
}
