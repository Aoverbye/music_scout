function(input, output, session) {
  
  output$music_table <- renderTable({
    tracks
  })
  
}