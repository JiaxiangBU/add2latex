#' Quick paste a LaTex object

#' @author Jiaxiang Li
#'
#' @importFrom glue glue
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
        } else if (type == 'alignat'){
            glue::glue(
            "
            $$\\begin{alignat}{2}
            1 + 1 &= 2 \\\\\\

            1 + 2 &= 3
            \\end{alignat}$$
            "
            ,.open = "<"
            ,.close = ">"
            )
        } else if (type == 'more') {
            cat("More types are under development, please click \n")
            cat("https://jiaxiangli.netlify.com/2018/01/30/rmarkdown/#latex \n")
        }
    clipr::write_clip(text)
    cat(text)
    cat("\nThis LaTeX is already pasted on your clipboard.")
}
