library(ggplot2)
library(MASS)

function(input, output) {
  output$plot1 <- renderPlot({
    set.seed(57)
    mu <- rep(0, 2)
    sigma <- matrix(input$r, nrow = 2, ncol = 2) + matrix(c(1-input$r,0,0,1-input$r),nrow=2)
    d<-mvrnorm(n = input$n, mu = mu, Sigma = sigma)
    data = data.frame(x= d[,1], y=d[,2])
    g = ggplot(data, aes(x= data[,1], y=data[,2]))
    g = g + geom_point(color="red",
                       fill="blue",
                       shape=21,
                       alpha=0.5,
                       size=6,
                       stroke = 2)+
      labs(x="x",y="y")
    print(g)
  })
}
