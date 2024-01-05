random_month_labels <- function(
    n,
    mon = c("September", "October",
            "November", "December", "January"),
    to_clipboard = TRUE){

  rand <- 5 - runif(n, 1, 5) + runif(n, 0, 2)
  rand <- round(rand)

  mon_length <- length(mon)
  rand[rand < 1] <- 1
  rand[rand > mon_length] <- mon_length

  if(to_clipboard){
    writeClipboard(mon[rand])
  }

  mon[rand]

}
