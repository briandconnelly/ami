latest_r_version <- function(news_url = "https://cloud.r-project.org/doc/manuals/r-release/NEWS.html") {
  contents <- readLines(news_url)
  releases <- contents[grep("CHANGES IN R [0-9]+\\.[0-9]+\\.[0-9]+", contents)]

  # TODO: checks

  package_version(sub("</h3>$", "", sub(".*CHANGES IN R ", "", releases[[1]])))
}


using_latest_r <- function(...) {
  r_version_current <- package_version(paste0(R.Version()[c("major", "minor")], collapse = "."))
  r_version_current >= latest_r_version(...)
}

using_latest_r()
