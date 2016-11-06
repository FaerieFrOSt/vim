let g:ctrlp_map = '<c-p>' "default mapping
let g:ctrlp_cmd = 'CtrlPMixed' "default command to invoke CtrlP : Mixed -> search in files, buffers and MRU files at the same time
"g:ctrlp_working_path_mode
"'c' -> directory of current file.
"'a' -> directory of current file unless it is a subdirectory of the cwd.
"'r' -> the nearest ancestor of the current file that contains one these directories or files: .git .hg .svn .bzr _darcs
"'w' -> modifier to 'r': start search from cwd instead of the current file's directory
"'' -> disable feature
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "ignore git folder and all files in .gitignore
