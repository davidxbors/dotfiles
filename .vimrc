set relativenumber
filetype on
filetype plugin on
filetype indent on
syntax on

" recon .tex and .bib files as tex
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.bib set filetype=tex

"copy and paste easier
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-p> "+P

" nav with guides
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l

" word count for plain text
map <F3> :!wc <C-R>%<CR>

" Latex Snippets
autocmd FileType tex map <F3> :w !detex \| wc -w<CR>
autocmd FileType tex imap ,s \subsection{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,s* \subsection*{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,dcls \documentclass[12pt]{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ttl \title{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,dt \date{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,body \begin{document}<CR>\maketitle<CR>\large<CR><++><CR>\end{document}<Esc><Space><Tab>
autocmd FileType tex imap ,bf \textbf{<++>}<Esc><Space><Tab>
autocmd FileType tex imap ,em \emph{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,it \textit{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ct \textcite{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,cp \parencite{<++>}<Esc><Space><Tab> 
autocmd FileType tex imap ,ol \begin{enumerate}<Enter><++><Enter>\end{enumerate}<Esc><Space><Tab>
autocmd FileType tex imap ,ul \begin{itemize}<CR><++><CR>\end{itemize}<Esc><Space><Tab>  
autocmd FileType tex imap ,li \item <++><Esc><Space><Tab> 
" add online element to latex bibliography
autocmd FileType tex imap ,online @online{<CR><++><CR>author = "<++>"<CR>title = "<++>"<CR>url = "<++>"<CR>addendum = "(accessed: <++>)"<CR>keywords = "<++>"<CR>}
autocmd FileType tex imap ,article @article{<CR><++><CR>author = "<++>"<CR>title = "<++>"<CR>journal = "<++>"<CR>volume = "<++>"<CR>number = "<++>"<CR>pages = "<++>"<CR>year = "<++>"<CR>DOI = "<++>"<CR>keywords = "<++>"<CR>}
