library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Central Limit Theorem through dices: We will explain how this 
              theorem works by showing 2 different histograms, one of the values of throwing dices 
              and the other by talking samples and showinf the histograms of the averages"),
  sidebarPanel(
    sliderInput('N', 'Number of Samples',value = 1, min = 1, max = 1000, step =1,),
    numericInput('M', 'Sample Size (dices)', 10, min = 10, max = 1000, step = 10)
  ),
  mainPanel(
    plotOutput('newHist')
  )
))
