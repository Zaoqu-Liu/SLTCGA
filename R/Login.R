#' @title Login in BEST database.
#' @author Zaoqu Liu; E-mail: liuzaoqu@163.com
#' @param token A bearer authorization token. You need to log in with a token with the author's permission. E-mail: liuzaoqu@163.com
#' @export
Login <- function(token) {
  synapser::synLogin(silent = T, authToken = token)
  cat(paste0(
    "===================================================================\n",
    "========================== Login Success ==========================\n",
    "==================================================================="
  ))
}
