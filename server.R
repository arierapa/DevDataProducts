library(shiny)
n<-1
m<-10
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      n <- input$N
      m <- input$M
      x<-sample.int(6, size = n*m, replace = TRUE, prob = NULL)
      d<-matrix(x,nrow=n,ncol=10)
      h<-apply(d,1,mean)
      par(mfrow=c(2,1))  
      hist(x,main=paste("Uniform Distribution: ", n*m," roles of a single die"),breaks=seq(.5,6.5,1),xlab = "Dice Number",col='lightblue')
      hist(h,main=paste("Normal distribution when n is big: ", n," samples of size ",m),breaks=seq(.5,6.5,.1),xlab = "Sample Average",col='lightblue')
    })
  }
)
