<?php
namespace app\controller;

use app\BaseController;

class Index extends BaseController
{
    public function index()
    {

        return view('index', [
            'version'  => \think\facade\App::version()
        ]);
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
