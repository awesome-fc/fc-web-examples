package main

import "github.com/astaxie/beego"

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.TplName = "index.tpl"
}

func main() {
	beego.Router("/", &MainController{})
	beego.BConfig.Listen.HTTPPort = 9000
	beego.Run()
}
