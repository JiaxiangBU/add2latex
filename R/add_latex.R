#' Quick paste a LaTex object

#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @export

add_latex <- function(type = 'bmatrix'){
    text <-
        if (type == 'bmatrix'){
            glue::glue(
            "
            $$\\begin{bmatrix}
            1 & 2 & 3
            \\end{bmatrix}$$
            "
            ,.open = "<"
            ,.close = ">"
            )
        }
        if (type == 'more') {
            cat("More types are under development, please click")
            cat("https://jiaxiangli.netlify.com/2018/01/30/rmarkdown/#latex")
        }
    clipr::write_clip(text)
    cat(text)
    cat("\nThis bibtex is already pasted on your clipboard.")
}
