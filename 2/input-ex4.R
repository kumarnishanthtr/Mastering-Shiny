# If you have a moderately long list in a selectInput(), 
# it’s useful to create sub-headings that break the list up into pieces. 
# Read the documentation to figure out how. 
# (Hint: the underlying HTML is called <optgroup>.)

library(shiny)

ui <- fluidPage(
  selectInput("state", "Choose a state:",
              list(`Karnataka` = list("Bangalore", "Mysore", "Udupi"),
                   `Kerala` = list("Aluva", "Munnar"),
                   `Maharashtra` = list("Mumbai", "Pune"))
  )
)

server <- function(input, output, session) {}

shinyApp(ui, server)