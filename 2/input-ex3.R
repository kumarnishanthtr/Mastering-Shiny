# Create a slider input to select values between 0 and 100 
# where the interval between each selectable value on the slider is 5. 
# Then, add animation to the input widget so when the user presses 
# play the input widget scrolls through the range automatically.

library(shiny)

ui <- fluidPage(
  sliderInput('range', 'Choose a number', min = 0, value = 10, max = 100, step = 5, animate = T)
)

server <- function(input, output, session) {}

shinyApp(ui, server)