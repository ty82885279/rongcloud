package controller

import (
	"fmt"
	"github.com/gin-gonic/gin"
	rcserversdk "github.com/rongcloud/server-sdk-go/RCServerSDK"
	"net/http"
)

func GerToken(c *gin.Context) {
	id := c.Query("userid")
	IMClient := rcserversdk.CreateRongCloud("p5tvi9dspm5e4", "lKR5rrlMHhC2ej")
	fmt.Println(IMClient)
	//https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3747249113,2611241841&fm=26&gp=0.jpg
	//https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fblog%2F202008%2F26%2F20200826113745_UcxQK.thumb.400_0.jpeg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616937871&t=245b4c94cadc05fdd9fb21bcdd0c363e
	token, err := IMClient.User.GetToken(id, "测试2", "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201608%2F12%2F20160812005801_kKHTy.jpeg&refer=http%3A%2F%2Fimg3.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616937872&t=9469a1be0ff6958bdfcdc36441ab933a")
	if err != nil {
		panic(err)
		return
	}
	c.JSON(http.StatusOK, token)
}
