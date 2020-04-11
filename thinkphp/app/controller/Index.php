<?php
namespace app\controller;

use app\BaseController;

class Index extends BaseController
{
    public function index()
    {
        return 'Greetings from ThinkPHP V' . \think\facade\App::version() . '.<br/><br/>This web app host on FunctionCompute of Aliyun.';
    }

    public function hello($name = 'ThinkPHP6')
    {
        return 'hello,' . $name;
    }
}
