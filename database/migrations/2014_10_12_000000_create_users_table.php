<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name');
            $table->string('last_name');
            $table->json('languages');
            $table->json('interests');
            $table->string('mobile_number');
            $table->string('email')->unique();
            $table->string('password');
            $table->rememberToken();
            $table->dateTime('current_sign_in_at');
            $table->dateTime('last_sign_in_at');
            $table->ipAddress('current_sign_in_ip');
            $table->ipAddress('last_sign_in_ip');
            $table->string('confirmation_token');
            $table->dateTime('confirmed_at');
            $table->dateTime('confirmation_sent_at');
            $table->string('profile_image')->nullable();
            $table->integer('country_id');
            $table->integer('nationality_id');
            $table->float('total_exprience', 8, 2);
            $table->boolean('active');
            $table->softDeletes();
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
        Schema::dropIfExists('users');
    }
}
