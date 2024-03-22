quarto::quarto_render("index.qmd")

system('git add .')
system('git commit -a -m "Index update"')
system('git push')

# git2r::add(repo = ".", path = NULL, force = FALSE)
repo_1 <- clone(path_bare, path_repo_1)
config(repo_1, user.name = "Alice", user.email = "alice@example.org")




git2r::commit(all=TRUE, message="index update")
git2r::push()



repo <- git2r::init(".")
git2r::config(repo, user.name = "trotsiuk", user.email = "volodymyr.trotsiuk@wsl.ch")
git2r::commit(repo, all=TRUE, message="index update")
git2r::push(repo, "origin", "refs/heads/master")
