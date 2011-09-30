
" Delimitmate {
    " Options {
        au FileType * let b:delimitMate_autoclose = 1
        " If using html auto complete (complete closing tag)
        au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
    " }
" }
