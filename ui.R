library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Обчислення площі еліпса"),
  sidebarPanel(
    h3('Введіть коефіцієнти'),
    numericInput("num1", label = h5("Pi"), value = 3.14, max = 3.14, min = 3.14),
    numericInput("num2", label = h5("довжина великої піввісі еліпса"), value = 3),
    numericInput("num3", label = h5("довжина малої піввісі еліпса"), value = 4),
    actionButton("start", "Обрахувати")
  ),
  mainPanel(
    h3('Обчислення'),
    textOutput("func"),
    textOutput("dyscr"),
    plotOutput('plot', width = "300px", height = "300px"))))
