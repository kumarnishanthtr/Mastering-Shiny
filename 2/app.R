library(shiny)
animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")
ui_old <- fluidPage(
  sliderInput('min', 'Limit (minimum)', min = 0, max = 100, value = 50),
  textInput("name", "", placeholder = 'name'),
  passwordInput("password", "", placeholder = 'enter password'),
  textAreaInput("story", "", rows = 3, cols = 60, placeholder = 'about'),
  numericInput("num", "Number one", value = 0, min = 0, max = 100),
  sliderInput("num2", "Number two", value = 50, min = 0, max = 100),
  sliderInput("rng", "Range", value = c(10, 20), min = 0, max = 100),
  dateInput("dob", "When were you born?", language = 'de'),
  dateRangeInput("holiday", "When do you want to go on vacation next?", separator = 'or'),
  selectInput("state", "What's your favourite state?", state.name, multiple = T),
  radioButtons("animal", "What's your favourite animal?", animals),
  checkboxInput("cleanup", "Clean up?", value = TRUE),
  checkboxInput("shutdown", "Shutdown?")
  
)

ui <- fluidPage(
  textOutput("text"),
  verbatimTextOutput("code")
)
server <- function(input, output, session) {
  output$text <- renderText({ 
    "Hello friend!" 
  })
  output$code <- renderPrint({ 
    summary(1:10) 
  })
}

ui <- fluidPage(
  tableOutput("static"),
  dataTableOutput("dynamic")
)
server <- function(input, output, session) {
  output$static <- renderTable(head(mtcars))
  output$dynamic <- renderDataTable(mtcars, options = list(pageLength = 5))
}

ui <- fluidPage(
  plotOutput("plot", width = "400px")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96)
}
# Complete app with UI and server components
shinyApp(ui, server)
