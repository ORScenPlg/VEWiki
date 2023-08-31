# Rendering the Oregon Scenario Planning Technical Wiki
# launch from ...

depends = c('bookdown', 'downlit', 'data.table', 'openxlsx')

for(i in depends){
  if(!i %in% (.packages(all.available=T))){
    install.packages(i, dependencies =TRUE)
  }
}

bookdown::render_book()

shell.exec(file.path(dirname(getwd()), 'docs/index.html'))
