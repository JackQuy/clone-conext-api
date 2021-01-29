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
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('gender');
            $table->string('avatar');
            $table->string('seek');
            // vì khóa chính bên bảng places mặt định là biginteger nên phải cấu hình lại khóa phụ có 2 cách như sau:
            $table->bigInteger('place_id')->unsigned();
            $table->foreign('place_id')->references('id')->on('places');
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id')->references('id')->on('countries');
            $table->unsignedBigInteger('expertise_id');
            $table->foreign('expertise_id')->references('id')->on('expertises');
            $table->unsignedBigInteger('business_type_id');
            $table->foreign('business_type_id')->references('id')->on('business_types');
            $table->unsignedBigInteger('work_place_id');
            $table->foreign('work_place_id')->references('id')->on('work_places');
            $table->string('introduction');
            // $table->integer('roles');
            // $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->boolean('is_active')->default(1)->comment('1-actived, 0-notActived');
            $table->softDeletes();
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
