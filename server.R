library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    if(input$p=='a'){ i <- 1 }
    if(input$p=='b'){ i <- 2 }
    if(input$p=='c'){ i <- 3 }
    if(input$p=='d'){ i <- 4 }
    x <- na.omit(airquality[, i])
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'violet', border = 'purple')
  })
})