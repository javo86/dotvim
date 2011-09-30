"Task-Org Plugin Settings

"Doc {

  "Commands {
    ":Ti<CR>
    "Type taskname & task (TODO test it): MYMARK type message test<CR>
    "output:
    ":MYMARK: 04.07.11 13:30:05<leader> user
    " message test

    ":Vt
    "View/hide window with all tasks from current file (buffer):

    ":Jt
    "Jump to selected task:
  "}

  "Settings {
    "a
  "}

"}

"Options {
" }

"Mappings {
  nnoremap <silent><leader>ti :Ti<CR>
  nnoremap <silent><leader>vt :Vt<CR>
  nnoremap <silent><leader>jt :Jt<CR>
"}
