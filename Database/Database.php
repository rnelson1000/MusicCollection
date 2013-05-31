<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Rachael
 * Date: 5/31/13
 * Time: 12:26 PM
 * To change this template use File | Settings | File Templates.
 */

class Database {

    public static function GetPDOConnection($config)
    {
        $dsn = "{$config['provider']}:host={$config['host']};dbname={$config['database']}";
        return new PDO($dsn, $config['user'], $config['password']);
    }

}