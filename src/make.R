rmarkdown::render("src/epistemology-naturalized.Rmd",
                  output_file = "index.md",
                  output_format = "md_document")
source('src/ProcessRmd.R')
