# ui.R

# Main layout of the dashboard
dashboardPage(
  
  # Top header with app title
  dashboardHeader(title = "Music Scout"),
  
  # Sidebar menu
  dashboardSidebar(
    
    # List of menu items
    sidebarMenu(
      
      # Home tab
      menuItem("Home", tabName = "home", icon = icon("music"))
      
    )  # End of sidebarMenu
  ),  # End of sidebar
  
  # Main body of the dashboard
  dashboardBody(
    
    # Container for all tabs
    tabItems(
      
      # Home tab content
      tabItem(
        tabName = "home",
        
        # Header and intro text
        h2("Music Scout Dashboard"),
        p("Live Billboard Hot 100"),
        
        # Filter input: search by artist
        textInput("artist_filter", "Filter by Artist", value = ""),
        
        # Hot 100 table output
        tableOutput("hot100_table")
        
      )  # End of home tab content
    )  # End of tabItems
  )  # End of dashboardBody
  
)  # End of dashboardPage
