# ami 0.2.1

* Added `using_positron()` and helpers `using_positron_desktop()` and `using_positron_server()` to detect the Positron IDE (#29)
* Added `using_python_venv()` to detect Python virtual environments (#30)


# ami 0.2.0

* Added `using_quarto()` for detecting whether code is running as part of a Quarto document (#25)
* `using_rstudio()` gains a `mode` argument, which can specify a particular RStudio environment (desktop, server, or workbench). These can also be checked via new helper functions `using_rstudio_desktop()`, `using_rstudio_server()`, and `using_rstudio_workbench()`. (#24)

# ami 0.1.1

# ami 0.1.0.9000

* `on_cran()` now checks a more robust set of environment variables (#15)
* `on_bioconductor()` now checks the proper environment variable (#19)
* Added `using_nix_shell()` for detecting Nix shell environments

# ami 0.1.0

* Initial public release
* Added a `NEWS.md` file to track changes to the package.
