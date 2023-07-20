# ui.R
library(shiny)
library(shinyWidgets)

# Define the UI for the Shiny app
ui <- fluidPage(
  # Use the Bootstrap theme
  theme = "bootstrap.css",
  
  # Main 12-column section
  fluidRow(
    column(12,
           h2("Welcome to my Shiny App"),
           p("This is a 12-column section using a Bootstrap theme."),
           # Add your content here
          
           pickerInput(
             inputId = "amenity.selector", 
             label = "Amenity:", 
             inline = TRUE,
             choices = amenity.list, 
             selected = "Any",
             options = pickerOptions(
               actionsBox = TRUE, 
               size = 10,
               selectedTextFormat = "count > 3"
             ), 
             multiple = TRUE
           ),
           pickerInput(
             inputId = "state.selector", 
             label = "State:", 
             inline = TRUE,
             selected = "All",
             choices = states, 
             options = pickerOptions(
               actionsBox = TRUE, 
               size = 10,
               selectedTextFormat = "count > 3"
             ), 
             multiple = TRUE
           ),
           pickerInput(
             inputId = "year.selector", 
             label = "Year:", 
             inline = TRUE,
             choices = 1965:1995, 
             selected = 1980,
             options = pickerOptions(
               actionsBox = TRUE, 
               size = 10,
               selectedTextFormat = "count > 3"
             ), 
             multiple = TRUE
           ),
           
           h3(textOutput("choices.helpertext")),  
           # For example: plotOutput("my_plot")
    )
  )
)
