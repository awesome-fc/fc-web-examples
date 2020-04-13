package main

import "github.com/gin-gonic/gin"
import "github.com/thinkerou/favicon"

func main() {
	r := gin.Default()
	r.LoadHTMLFiles("index.html")
	r.GET("/", func(c *gin.Context) {
		c.HTML(200, "index.html",  gin.H{})
	})
	r.Use(favicon.New("./favicon.ico"))
	r.Run(":9000")
}
