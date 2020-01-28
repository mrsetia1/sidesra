<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

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
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('api_token',60)->unique();
            
            $table->string('user_type')->default('user');

            $table->json('liked_posts')->nullable();
            $table->json('disliked_posts')->nullable();
            $table->json('favourite_posts')->nullable();
            $table->json('favourite_categories')->nullable();
            $table->json('preferences')->nullable();

            $table->string('avatar')->default('avatar1.png');
            
            
            $table->rememberToken();
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
