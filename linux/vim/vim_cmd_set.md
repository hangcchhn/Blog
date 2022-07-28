# vim config

---

## 配置文件永久设置
- Linux:/etc/vim/vimrc
- macOS:/usr/share/vim/vimrc
- macOS:~/.vimrc

```vim
set tabstop=4
set expandtab
set smarttab
set autoindent
set smartindent

set Shiftwidth=4
set softtabstop=4

set magic
set ruler
"set number
"set cursorline

set showcmd
set showmatch

set hlsearch
set incsearch

syntax enable
syntax on

set encoding=utf-8
set fileencoding=utf-8
set fileencoding=utf-8

set autoread
set nobackup
set noswapfile
set noundofile

filetype plugin indent on
```

---

## 执行命令临时配置

- 查看
    - :set xxx
- 设置
    - :set xxx=yyy
- 启用
    - :set xxx
- 禁用
    - :set noxxx
- 开启
    - :xxx on
- 关闭
    - :xxx off
---

- 高亮搜索high light search
    - shift + 3 -> #
    - :noh
    - :set hls
    - :set nohls

- 行号
    - :set number
    - :set nu
    - :set nonu

- 忽略大小写
    - :set ignorecase
    - :set ic
    - :set noic

- 自动缩进
    - :set autoindent
    - :set ai
    - :set noai

- 设置制表符对应的空格数量
    - :set tabstop=4
    - :set ts=4


- 语法高亮
    - :syntax on
    - :syntax off

- 禁止备份文件
    - :set nobackup
- 禁止交换文件
    - :set noswapfile

---