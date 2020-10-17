rmarkdown::render("src/post-template.Rmd",
                  output_file = "index.md")
source('src/ProcessRmd.R')
