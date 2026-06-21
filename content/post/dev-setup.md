---
title: '我的开发环境配置'
date: 2026-06-19
description: '分享我日常使用的开发工具和配置，包括 Neovim、tmux、终端等'
tags: ['工具', 'Linux', 'Neovim']
categories: ['技术']
cover:
  image: 'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=800'
  caption: 'Photo by Unsplash'
---

## 开发环境一览

工欲善其事，必先利其器。分享一下我目前的开发环境配置。

## 编辑器：Neovim

我现在的主力编辑器是 Neovim，配合 Lazy.nvim 管理插件。

### 核心插件

- **Telescope** — 模糊搜索文件、文本、符号
- **LSP** — 语言服务协议，代码补全、跳转
- **Treesitter** — 更好的语法高亮
- **lualine** — 状态栏美化

## 终端：WezTerm + tmux

WezTerm 是一个 GPU 加速的终端模拟器，配合 tmux 实现会话管理。

## Shell：zsh + starship

使用 zsh 配合 starship 主题，好看又实用的命令行提示符。

## Git 配置

```bash
[alias]
    lg = log --graph --oneline --decorate --all
    st = status
    ci = commit
    br = branch
```

一个好用的 `.gitconfig` 能大幅提升日常效率。
