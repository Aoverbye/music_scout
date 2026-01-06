# server.R

# Server function: defines reactive behavior and outputs for the Shiny app
function(input, output, session) {
  
  # Render the Hot 100 Billboard table
  output$hot100_table <- renderTable({
    
    # Reactive filtering: if user types in artist, filter the hot100 table
    if (input$artist_filter != "") {
      hot100 %>% filter(str_detect(tolower(artist), tolower(input$artist_filter)))
    } else {
      hot100
    }
    
  })  # End of renderTable
  
}  # End of server function
