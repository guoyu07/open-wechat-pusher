package main

import (
	"fmt"
	"log"
)

type WechatPusher struct {
}

func (wp *WechatPusher) MsgHandler(msg Message) {
	// 处理业务逻辑
	log.Println("get recive msg")
	fmt.Println(string(msg.amqpDelivery.Body))

}
