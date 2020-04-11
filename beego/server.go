package main

import "github.com/astaxie/beego"

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	this.Ctx.WriteString("Greetings from Beego!\n\nThis web app host on FunctionCompute of Aliyun.")
}

func main() {
	beego.Router("/", &MainController{})
	beego.Run()
}
