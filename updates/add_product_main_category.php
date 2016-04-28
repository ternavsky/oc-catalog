<?php namespace Tiipiik\Catalog\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class AddProductMainCategory extends Migration
{

    public function up()
    {
        if ( ! Schema::hasColumn('tiipiik_catalog_products', 'category_id')) {
            Schema::table('tiipiik_catalog_products', function ($table) {
                $table->integer('category_id')->after('id');
            });
        }
    }

    public function down()
    {
        if (Schema::hasColumn('tiipiik_catalog_products', 'category_id')) {
            Schema::table('tiipiik_catalog_stores', function ($table) {
                $table->dropColumn('group_id');
            });
        }
    }
}
