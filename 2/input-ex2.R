# Carefully read the documentation for sliderInput() 
# to figure out how to create a date slider, as shown below. 

library(shiny)

ui <- fluidPage(
  sliderInput('date', 'When should we deliver?', min = Sys.Date(), max = Sys.Date() + 7, value = Sys.Date() + 1)
)

server <- function(input, output, session) {}

shinyApp(ui, server)