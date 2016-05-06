<?php namespace Tiipiik\Catalog\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class AddProductFullDescription extends Migration
{

    public function up()
    {
        if ( ! Schema::hasColumn('tiipiik_catalog_products', 'full_description')) {
            Schema::table('tiipiik_catalog_products', function ($table) {
                $table->text('full_description');
            });
        }
    }

    public function down()
    {
        if (Schema::hasColumn('tiipiik_catalog_products', 'full_description')) {
            Schema::table('tiipiik_catalog_products', function ($table) {
                $table->dropColumn('full_description');
            });
        }
    }
}
