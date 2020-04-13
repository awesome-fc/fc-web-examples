'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    ctx.body = 'Greetings from Eggjs! \n\nThis web app host on FunctionCompute of Aliyun.';
  }
}

module.exports = HomeController;
