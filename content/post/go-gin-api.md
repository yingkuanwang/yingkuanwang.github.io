---
title: '用 Go + Gin 写一个 RESTful API'
date: 2026-06-20
description: '从零搭建一个生产可用的 Go API 项目，涵盖路由、中间件、数据库和错误处理'
tags: ['Go', 'Gin', 'API']
categories: ['技术']
cover:
  image: 'https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=800'
  caption: 'Photo by Unsplash'
---

## 前言

Go 语言在后端领域越来越受欢迎，而 Gin 是目前最流行的 Go Web 框架之一。

本文记录如何用 Gin 搭建一个结构清晰、可扩展的 RESTful API。

<!--more-->

## 项目结构

```
myapi/
├── main.go
├── config/
├── handlers/
├── models/
├── middleware/
├── routes/
└── utils/
```

## 安装 Gin

```bash
go get -u github.com/gin-gonic/gin
```

## 简单的启动代码

```go
package main

import "github.com/gin-gonic/gin"

func main() {
    r := gin.Default()
    r.GET("/ping", func(c *gin.Context) {
        c.JSON(200, gin.H{"message": "pong"})
    })
    r.Run(":8080")
}
```

## 路由分组

```go
v1 := r.Group("/api/v1")
{
    v1.GET("/users", handlers.GetUsers)
    v1.POST("/users", handlers.CreateUser)
    v1.GET("/users/:id", handlers.GetUser)
}
```

## 总结

Gin 的性能优秀、文档完善，是 Go 后端的绝佳选择。
