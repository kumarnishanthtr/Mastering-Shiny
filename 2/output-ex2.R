# Re-create the Shiny app from Section 2.3.3, this time setting height to 300px 
# and width to 700px. Set the plot “alt” text so that a visually impaired user 
# can tell that its a scatterplot of five random numbers.

ui <- fluidPage(
  plotOutput("plot",height = '300px', width = "700px")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), res = 96, alt = 'a scatterplot of five random numbers')
}

shinyApp(ui, server)
