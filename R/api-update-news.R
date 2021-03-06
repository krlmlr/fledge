#' Update NEWS.md with messages from top-level commits
#'
#' Lists all commits from a range (default: top-level commits since the most
#' recent tag) and adds bullets from their body to `NEWS.md`.
#' @param messages A character vector of commit messages,
#'   e.g. as in the `message` column in the return value of [get_top_level_commits()].
#' @param range Deprecated.
#' @export
update_news <- function(messages = get_top_level_commits(since = get_last_tag())$message, range = NULL) {
  if (!is.null(range) || is.list(messages)) {
    deprecate_stop("0.0.5", "fledge::update_news(range = )",
      details = "Pass a vector of `messages`.")
  }

  with_repo(update_news_impl(messages))
  invisible(NULL)
}
