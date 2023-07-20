# server.R
library(shiny)

# Define the server logic for the Shiny app
server <- function(input, output, session) {
  # Add server logic here if needed
  
 
  
  observe({
    output$choices.helpertext <- renderText({ 
      years.selected <- input$year.selector
      states.selected <- input$state.selector
      amenities.selected <- input$amenity.selector
    
      #message(states.selected)
      querystmt <- paste("Locations featuring the amenities ", paste(amenities.selected, collapse = ", "), " made up XX% of locations in the following states: ", paste(states.selected, collapse = ", "), " in the following years: ", paste(years.selected, collapse = ", "), sep = "")
      
      return(querystmt)
    })
    
 })
}
