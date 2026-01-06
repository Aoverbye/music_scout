# global.R

# Load packages
library(shiny)
library(httr)
library(jsonlite)
library(dplyr)

# Function to get Billboard Hot 100 chart
get_chart <- function(positions = 1:100) {
  url <- "https://raw.githubusercontent.com/mhollingshead/billboard-hot-100/main/recent.json"
  
  res <- httr::GET(url)
  httr::stop_for_status(res) # Stop if URL not found or other error
  
  chart_json <- fromJSON(rawToChar(res$content))
  
  # Convert JSON to tibble and keep relevant columns
  chart_df <- chart_json$data %>%
    as_tibble() %>%
    transmute(
      week_date = chart_json$date,
      rank = this_week,
      artist = artist,
      title = song,
      last_week = last_week,
      peak_position = peak_position,
      weeks_on_chart = weeks_on_chart
    ) %>%
    filter(rank %in% positions)
  
  return(chart_df)
}

# Example: load top 20 at startup
hot100 <- get_chart(positions = 1:20)