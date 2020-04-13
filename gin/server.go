package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.String(200, "Greetings from Gin! \n\nThis web app host on FunctionCompute of Aliyun.")
	})
	r.Run(":9000")
}
