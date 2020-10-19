<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSmartcontractsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('smartcontracts', function (Blueprint $table) {
            $table->id();
            $table->string('userid');
            $table->text('filename');
            $table->text('code');
            $table->foreign('userid')->references('id')->on('sessions');
            $table->text('txloutput');
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
        Schema::dropIfExists('smartcontracts');
    }
}
