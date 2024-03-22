quarto::quarto_render("index.qmd")

system('git add .')
system('git commit -a -m "Index update"')
system('git push')
