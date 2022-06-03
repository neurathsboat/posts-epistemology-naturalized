#!/usr/bin/env Rscript

# Helper function to replace YAML header with TOML
InsertHeader = function(fileName) {
  fileContents = readLines(fileName)
  newHeader = readLines("src/header")
  fileWithNewHeader = c(newHeader, fileContents)
  writeLines(fileWithNewHeader, fileName)
}

# Post-process .md file
InsertHeader("src/index.md")

# Move new file one level up

system(paste("mv", "src/index.md", "index.md"))
