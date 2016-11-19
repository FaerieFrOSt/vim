let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++14 -Wall -Wextra -Wpedantic"

let g:syntastic_cpp_checkers = ['clang_check']
"use compilation database for clang check
let g:syntastic_cpp_clang_check_post_args = ""
