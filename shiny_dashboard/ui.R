# ui.R
dashboardPage(
  dashboardHeader(title = "Music Scout"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home", icon = icon("music"))
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "home",
        h2("Music Scout Dashboard"),
        p("Shiny app is running")
      )
    )
  )
)
