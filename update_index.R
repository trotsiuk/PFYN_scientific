rmarkdown::render("index.Rmd")

system('git add .')
system('git commit -a -m "Index update"')
system('git push')
