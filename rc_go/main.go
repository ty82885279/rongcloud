package main

import (
	"github.com/gin-gonic/gin"
	"融云/controller"
)

func main() {

	r := gin.Default()
	r.GET("/token", controller.GerToken)

	r.Run(":8001")

}
