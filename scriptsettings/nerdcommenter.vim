" Doc {
  "NT = NERDTree 
                                                       "*'loaded_nerd_comments'*
"If this script is driving you insane you can turn it off by setting this
"option >
    "let loaded_nerd_comments=1
"<
"------------------------------------------------------------------------------
                                                    "*'NERDAllowAnyVisualDelims'*
"Values: 0 or 1.
"Default: 1.

"If set to 1 then, when doing a visual or visual-block comment (but not a
"visual-line comment), the script will choose the right delimiters to use for
"the comment. This means either using the current delimiters if they are
"multipart or using the alternative delimiters if THEY are multipart.  For
"example if we are editing the following java code: >
    "float foo = 1221;
    "float bar = 324;
    "System.out.println(foo * bar);
"<
"If we are using // comments and select the "foo" and "bar" in visual-block
"mode, as shown left below (where '|'s are used to represent the visual-block
"boundary), and comment it then the script will use the alternative delims as
"shown on the right: >

    "float |foo| = 1221;                   float /*foo*/ = 1221;
    "float |bar| = 324;                    float /*bar*/ = 324;
    "System.out.println(foo * bar);        System.out.println(foo * bar);
"<
"------------------------------------------------------------------------------
                                                     "*'NERDBlockComIgnoreEmpty'*
"Values: 0 or 1.
"Default: 1.

"This option  affects visual-block mode commenting. If this option is turned
"on, lines that begin outside the right boundary of the selection block will be
"ignored.

"For example, if you are commenting this chunk of c code in visual-block mode
"(where the '|'s are used to represent the visual-block boundary) >
    "#include <sys/types.h>
    "#include <unistd.h>
    "#include <stdio.h>
   "|int| main(){
   "|   | printf("SUCK THIS\n");
   "|   | while(1){
   "|   |     fork();
   "|   | }
   "|}  |
"<
"If NERDBlockComIgnoreEmpty=0 then this code will become: >
    "#include <sys/types.h>
    "#include <unistd.h>
    "#include <stdio.h>
    "/*int*/ main(){
    "/*   */ printf("SUCK THIS\n");
    "/*   */ while(1){
    "/*   */     fork();
    "/*   */ }
    "/*}  */
"<
"Otherwise, the code block would become: >
    "#include <sys/types.h>
    "#include <unistd.h>
    "#include <stdio.h>
    "/*int*/ main(){
    "printf("SUCK THIS\n");
    "while(1){
        "fork();
    "}
    "/*}  */
"<
"------------------------------------------------------------------------------
                                                "*'NERDCommentWholeLinesInVMode'*
"Values: 0, 1 or 2.
"Default: 0.

"By default the script tries to comment out exactly what is selected in visual
"mode (v). For example if you select and comment the following c code (using |
"to represent the visual boundary): >
    "in|t foo = 3;
    "int bar =| 9;
    "int baz = foo + bar;
"<
"This will result in: >
    "in/*t foo = 3;*/
    "/*int bar =*/ 9;
    "int baz = foo + bar;
"<
"But some people prefer it if the whole lines are commented like: >
    "/*int foo = 3;*/
    "/*int bar = 9;*/
    "int baz = foo + bar;
"<
"If you prefer the second option then stick this line in your vimrc: >
    "let NERDCommentWholeLinesInVMode=1
"<

"If the filetype you are editing only has no multipart delimiters (for example
"a shell script) and you hadnt set this option then the above would become >
    "in#t foo = 3;
    "#int bar = 9;
"<
"(where # is the comment delimiter) as this is the closest the script can
"come to commenting out exactly what was selected. If you prefer for whole
"lines to be commented out when there is no multipart delimiters but the EXACT
"text that was selected to be commented out if there IS multipart delimiters
"then stick the following line in your vimrc: >
    "let NERDCommentWholeLinesInVMode=2
"<

"Note that this option does not affect the behaviour of commenting in
"|visual-block| mode.

"------------------------------------------------------------------------------
                                                 "*'NERDCreateDefaultMappings'*
"Values: 0 or 1.
"Default: 1.

"If set to 0, none of the default mappings will be created.

"See also |NERDComMappings|.

"------------------------------------------------------------------------------
                                                      "*'NERDCustomDelimiters'*
"Values: A map (format specified below).
"Default: {}

"Use this option if you have new filetypes you want the script to handle, or if
"you want to override the default delimiters of a filetype.

"Example: >
    "let g:NERDCustomDelimiters = {
        "\ 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
        "\ 'grondle': { 'left': '{{', 'right': '}}' }
    "\ }
"<

"Here we override the delimiter settings for ruby and add FOO/BAR as alternative
"delimiters. We also add {{ and }} as delimiters for a new filetype called
"'grondle'.

"------------------------------------------------------------------------------
                                                           "*'NERDRemoveAltComs'*
"Values: 0 or 1.
"Default: 1.

"When uncommenting a line (for a filetype with an alternative commenting style)
"this option tells the script whether to look for, and remove, comment
"delimiters of the alternative style.

"For example, if you are editing a c++ file using // style comments and you go
"|<Leader>|cu on this line: >
    "/* This is a c++ comment baby! */
"<
"It will not be uncommented if the NERDRemoveAltComs is set to 0.

"------------------------------------------------------------------------------
                                                       "*'NERDRemoveExtraSpaces'*
"Values: 0 or 1.
"Default: 0.

"By default, the NERD commenter will remove spaces around comment delimiters if
"either:
"1. |'NERDSpaceDelims'| is set to 1.
"2. NERDRemoveExtraSpaces is set to 1.

"This means that if we have the following lines in a c code file: >
    "/* int foo = 5; */
    "/* int bar = 10; */
    "int baz = foo + bar
"<
"If either of the above conditions hold then if these lines are uncommented
"they will become: >
    "int foo = 5;
    "int bar = 10;
    "int baz = foo + bar
"<
"Otherwise they would become: >
     "int foo = 5;
     "int bar = 10;
    "int baz = foo + bar
"<

"------------------------------------------------------------------------------
                                                                  "*'NERDLPlace'*
                                                                  "*'NERDRPlace'*
"Values: arbitrary string.
"Default:
    "NERDLPlace: "[>"
    "NERDRPlace: "<]"

"These options are used to control the strings used as place-holder delimiters.
"Place holder delimiters are used when performing nested commenting when the
"filetype supports commenting styles with both left and right delimiters.
"To set these options use lines like: >
    "let NERDLPlace="FOO"
    "let NERDRPlace="BAR"
"<
"Following the above example, if we have line of c code: >
    "/* int horse */
"<
"and we comment it with |<Leader>|cn it will be changed to: >
    "/*FOO int horse BAR*/
"<
"When we uncomment this line it will go back to what it was.

"------------------------------------------------------------------------------
                                                                "*'NERDMenuMode'*
"Values: 0, 1, 2, 3.
"Default: 3

"This option can take 4 values:
    ""0": Turns the menu off.
    ""1": Turns the 'comment' menu on with no menu shortcut.
    ""2": Turns the 'comment' menu on with <alt>-c as the shortcut.
    ""3": Turns the 'Plugin -> comment' menu on with <alt>-c as the shortcut.

"------------------------------------------------------------------------------
                                                         "*'NERDUsePlaceHolders'*
"Values: 0 or 1.
"Default 1.

"This option is used to specify whether place-holder delimiters should be used
"when creating a nested comment.

"------------------------------------------------------------------------------
                                                             "*'NERDSpaceDelims'*
"Values: 0 or 1.
"Default 0.

"Some people prefer a space after the left delimiter and before the right
"delimiter like this: >
    "/* int foo=2; */
"<
"as opposed to this: >
    "/*int foo=2;*/
"<
"If you want spaces to be added then set NERDSpaceDelims to 1 in your vimrc.

"See also |'NERDRemoveExtraSpaces'|.

"------------------------------------------------------------------------------
                                                         "*'NERDCompactSexyComs'*
"Values: 0 or 1.
"Default 0.

"Some people may want their sexy comments to be like this: >
    "/* Hi There!
     "* This is a sexy comment
     "* in c */
"<
"As opposed to like this: >
    "/*
     "* Hi There!
     "* This is a sexy comment
     "* in c
     "*/
"<
"If this option is set to 1 then the top style will be used.

"------------------------------------------------------------------------------
                                                          "*'NERDDefaultNesting'*
"Values: 0 or 1.
"Default 1.

"When this option is set to 1, comments are nested automatically. That is, if
"you hit |<Leader>|cc on a line that is already commented it will be commented
"again.

"------------------------------------------------------------------------------
"3.3 Default delimiter customisation                     *NERDComDefaultDelims*

"If you want the NERD commenter to use the alternative delimiters for a
"specific filetype by default then put a line of this form into your vimrc: >
    "let NERD_<filetype>_alt_style=1
"<
"Example: java uses // style comments by default, but you want it to default to
"/* */ style comments instead. You would put this line in your vimrc: >
    "let NERD_java_alt_style=1
"<

"See |NERDComAltDelim| for switching commenting styles at runtime.

"==============================================================================
"5. Key mapping customisation                                *NERDComMappings*

"To change a mapping just map another key combo to the internal <plug> mapping.
"For example, to remap the |NERDComComment| mapping to ",omg" you would put
"this line in your vimrc: >
    "map ,omg <plug>NERDCommenterComment
"<
"This will stop the corresponding default mappings from being created.

"See the help for the mapping in question to see which <plug> mapping to
"map to.

"See also |'NERDCreateDefaultMappings'|.

"==============================================================================
"6. Issues with the script                                      *NERDComIssues*


"------------------------------------------------------------------------------
"6.1 Delimiter detection heuristics                         *NERDComHeuristics*

"Heuristics are used to distinguish the real comment delimiters

"Because we have comment mappings that place delimiters in the middle of lines,
"removing comment delimiters is a bit tricky. This is because if comment
"delimiters appear in a line doesnt mean they really ARE delimiters. For
"example, Java uses // comments but the line >
    "System.out.println("//");
"<
"clearly contains no real comment delimiters.

"To distinguish between ``real'' comment delimiters and ``fake'' ones we use a
"set of heuristics. For example, one such heuristic states that any comment
"delimiter that has an odd number of non-escaped " characters both preceding
"and following it on the line is not a comment because it is probably part of a
"string. These heuristics, while usually pretty accurate, will not work for all
"cases.
" }

" Options {
" }

" Key mappings {
" }

