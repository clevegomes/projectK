<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServiceProductOwnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_owners', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('currency_id');
            $table->float('rating',8,2);
            $table->boolean('active');
            $table->boolean('documents_verified');
            $table->string('national_document_name');
            $table->string('nationality_document_url');
            $table->boolean('off-line');
            $table->integer('service_limit');
            $table->timestamps();
        });






    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_owners');
    }
}
