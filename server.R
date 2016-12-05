library(shiny)
shinyServer(
  function(input, output) {
    output$func<-renderText({
      input$start
      if (input$num1 >= 0) {
        paste0('Рівняння: ',input$num1,'*', input$num2,'*',input$num3)
      }
    })
    output$dyscr<- renderText({
      paste0('Площа еліпса = ',(input$num1*input$num2*input$num2))
       })})
