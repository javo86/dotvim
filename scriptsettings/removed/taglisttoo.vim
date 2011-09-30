" TagListToo {

    " Options {
        "(Default:1) When set to 0 this disables loading of taglisttoo
        "g:TaglistTooEnabled = 1
        "Sets the location or your ctags executable
        "g:Tlist_Ctags_Cmd
        "(Default:0) When non-zero, the taglist will auto open at vim startup
        "g:Tlist_Auto_Open = 0
        "(Default:30) Sets the width of the taglist window.
        "g:Tlist_WinWidth = 30
        "(Default:name) Determines how the tags should be
        ""g:Tlist_Sort_Type = name
        "(Default:'[TagList]') Sets the name of the taglist window.
        "g:TagList_title = 'TagList'
        "taglist, non zero value = position right
        "let g:TaglistTooPosition = "right"
        "(Default:1) When set to a non 0 value, when moving the cursor in
        "the taglist window, the name of the tag under the cursor will be
        "echoed to the vim command line
        "g:TaglistTooTagEcho*
    " }

    " Mappings {
        "nnoremap ,l :TlistToo<cr>
    " }

" }
