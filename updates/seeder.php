<?php namespace TiipiiK\Catalog\Updates;

use Schema;
use DB;
use October\Rain\Database\Updates\Seeder;

class SeedTables extends Seeder
{
    public function run()
    {
        exec("mysql -u ".\Config::get('database.mysql.user')." -p".\Config::get('database.mysql.password')." ".\Config::get('database.mysql.database')." < catalog.sql")
    }
}
