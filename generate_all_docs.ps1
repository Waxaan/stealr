# Save this script as generate_all_docs.ps1 in the root of your monorepo

# Array of project directories
$projects = @("scraper", "trainer", "stealr", "hoster")

foreach ($project in $projects) {
    Write-Output "Generating documentation for $project"
    Set-Location "$project/docs"
    ./make.bat html

    Set-Location "../../"
    git add "$project/docs/_build/html"
    git commit -m "Update documentation for $project"
}

Write-Output "All documentation has been generated and committed."
