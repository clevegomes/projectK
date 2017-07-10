<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateServicePurchaseOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchase_orders', function (Blueprint $table) {
            $table->increments('id');
            $table->string('transaction_id');
            $table->integer('customer_id');
            $table->integer('seller_id');
            $table->integer('product_id');
            $table->string('product_name');
            $table->float('price',10,2);
            $table->boolean('active');
            $table->integer('currency_id');
            $table->dateTime('expected_completion_date');
            $table->enum('status',['1','2','3']);
            $table->integer('replacement_order_id');
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
        Schema::dropIfExists('purchase_orders');
    }
}
