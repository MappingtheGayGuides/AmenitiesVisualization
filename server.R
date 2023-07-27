# server.R
library(shiny)
library(tidyverse)

# Define the server logic for the Shiny app
server <- function(input, output, session) {
  # Add server logic here if needed
  
  
  #gets the length of the dataframe. Note that its only filtering for the first year 
  # in the list of inputs here. 
  output$test.filter <- reactive({
    viz.data <- data %>% filter(Year == input$year.selector[1])
    length(viz.data$Year)
  })
  
 
  #so the years can be accessed by assessing the length of input$year.selector. 
  #If its longer than 1 we will need to iterate through the variable to filter for all variables. 
  # what we need to do is use this input to construct a filter statement that looks like 
  # IF year.selector is greater than 1, filter by year.selector[1], year.selector[2], etc
  # Should google it because there could be an easier or better answer here, but I think 
  # this is a situation where a loop will work. While x is less than the total length of year.selector 
  # built a filter statement then at the end store it in a variable and use it to filter the dataset. 
  # This is probably too convoluted and theres a more sophisticated way of doing it. 
  
  #test the number of items selected 
  output$num.locations <- renderPrint(length(input$year.selector))
  
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
