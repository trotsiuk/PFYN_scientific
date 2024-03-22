quarto::quarto_render("index.qmd")

git2r::add(repo = ".", path = NULL, force = FALSE)
git2r::commit(all=TRUE, message="index update")
git2r::push()