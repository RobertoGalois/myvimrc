" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: robert0 <fripponsupersonique@42.fr>        +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2018/09/12 23:21:36 by robert0           #+#    #+#              "
"    Updated: 2018/09/14 10:19:11 by robert0          ###   ########.fr        "
"                                                                              "
" **************************************************************************** "





"********************"
" code specifictions "
"********************"

"auto indent = keep current indent on the new line
set autoindent

"smart indent = add a new indent on the new line depending on the context
"set smartindent

"c indent = smart indent for *.c
set cindent

"indentation every X cols
set tabstop=4

"width of a tab
set shiftwidth=4

"replace tabs with spaces ($shiftwidth spaces)
"set expandtab

"add a ) after the char if we write a (
inoremap ( ()<left>
inoremap () ()

"add a } after the char if we write a {
inoremap { {}<Left><enter><up><end>
inoremap {} {}<Left>

"add double quotes after the char double  quote
inoremap " ""<left>
inoremap "" ""

"highlight cursor column
set cursorcolumn

"highlight cursor line
set cursorline

"show linenumber
set nu

"highlight \  \, disabled by default - press Ctrl+D to enable/disable
let @/='\ \{2}'
set nohlsearch
map <expr> <C-D> (&hlsearch ==? 0) ? ':set hlsearch<enter>' : ':set nohlsearch<enter>'

"hightlight red a whitespace a the end of a line
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\s+\s{1}/

"highlight in blue a line that has more than 80 columns
highlight MoreThan80 ctermbg=blue guibg=blue
:2match MoreThan80 /\%81v.\+/
