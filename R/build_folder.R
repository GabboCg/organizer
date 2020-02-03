#' Build R proyect folders
#'
#' @importFrom fs dir_tree
#'
#' @param rmd if is TRUE an Rmds folder will be created.
#' @param dir_tree if is TRUE an directory tree will be presented in the console.
#'
#' @return
#' @export
#'
#' @examples
build_folder <- function(rmd = FALSE, dir_tree = TRUE) {

  # create data folder, if exist is deleted and then created
  if (dir.exists("data")) {

    decision <- readline(prompt = "Do you want to remove data folder? :")

    if (decision == "yes") {

      unlink("data", recursive = TRUE)

    } else {

      cat("Folder data remain in R proyect.")

    }

  } else {

    dir.create("data")

  }

  # create script folder, if exist is deleted and then created
  if (dir.exists("script")) {

    decision <- readline(prompt = "Do you want to remove script folder? :")

    if (decision == "yes") {

      unlink("script", recursive = TRUE)

    } else {

      cat("Folder script remain in R proyect.")

    }

  } else {

    dir.create("script")
    dir.create("script/functions")

    if (rmd == TRUE) dir.create("script/Rmds")

  }

  # create data output, if exist is deleted and then created
  if (dir.exists("output")) {

    decision <- readline(prompt = "Do you want to remove output folder? :")

    if (decision == "yes") {

      unlink("output", recursive = TRUE)

    } else {

      cat("Folder output remain in R proyect.")

    }

  } else {

    dir.create("output")
    dir.create("output/plots")
    dir.create("output/data")

  }

  # dir tree printed in console
  if (dir_tree == TRUE) fs::dir_tree()

}

# build_folder(rmd = TRUE, dir_tree = TRUE)

