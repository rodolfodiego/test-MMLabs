<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEmailAddressPivotsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('email_address_pivots', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('emails_address_id')->nullable();
            $table->foreign('emails_address_id')->references('id')->on('email_addresses')->onDelete('cascade');

            $table->unsignedBigInteger('email_id')->nullable();
            $table->foreign('email_id')->references('id')->on('emails')->onDelete('cascade');

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
        Schema::dropIfExists('email_address_pivots');
    }
}
