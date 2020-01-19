#' Quick paste a LaTex object
#' @author Jiaxiang Li
#'
#' @import clipr
#' @import glue
#' @param type The type of equations in Latex to choose.
#' @param is_paste Whether to paste in the clipboard.
#' @export
#' @examples
#' \dontrun{add_latex('bmatrix')}
#' \dontrun{add_latex('alignat')}
#' \dontrun{add_latex('more')}

add_latex <-
    function(type = c('bmatrix', 'alignat', 'more'),
             is_paste = TRUE) {
        text <-
            if (type == 'bmatrix') {
                glue::glue(
                    "
            $$\\begin{bmatrix}
            1 & 2 & 3
            \\end{bmatrix}$$
            "
                    ,
                    .open = "<"
                    ,
                    .close = ">"
                )
            } else if (type == 'alignat') {
                glue::glue(
                    "
            $$\\begin{alignat}{2}
            1 + 1 &= 2 \\\\\\

            1 + 2 &= 3
            \\end{alignat}$$
            "
                    ,
                    .open = "<"
                    ,
                    .close = ">"
                )
            } else if (type == 'more') {
                cat("More types are under development, please click \n")
                cat("https://jiaxiangli.netlify.com/2018/01/30/rmarkdown/#latex \n")
            }
        if (is_paste == TRUE) {
            clipr::write_clip(text)
        }
        cat(text)
        cat("\nThis LaTeX is already pasted on your clipboard.")
    }
