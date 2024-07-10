library(rvest)
library(stringr)

url <- read_html("https://www.imdb.com/search/title/?title_type=feature&release_date=1995-01-01,1995-12-31&genres=comedy")

 name <- url %>%
   html_nodes("a.ipc-title-link-wrapper") %>%
   html_text()%>%
   str_remove_all("[()\n0-9.]") %>%
   str_trim

name 

times <- url %>%
  html_nodes("div.sc-b189961a-7") %>%
  html_text() %>%
  str_trim

times

ratings <- url %>%
  html_nodes("span.ipc-rating-star--voteCount") %>%
  html_text() %>%
  str_trim

ratings

comedy <- data.frame("Название фильма" = name, "Продолжительность" = times, "Рейтинг" = ratings)
comedy