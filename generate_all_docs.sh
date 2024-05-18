#!/bin/bash

# Array of project directories
projects=("scraper" "trainer" "stealr" "hoster")

for project in "${projects[@]}"
do
  echo "Generating documentation for $project"
  cd $project/docs
  make html

  cd ../../
  git add $project/docs/build/html
  git commit -m "Update documentation for $project"
done

echo "All documentation has been generated and committed."
