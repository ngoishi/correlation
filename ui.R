fluidPage(
  verticalLayout(
    titlePanel("Correlation"),
    plotOutput("plot1"),
    wellPanel(
      sliderInput("n", "Number of points", 10, 200,
                  value = 50, step = 10),
      sliderInput("r", "Correlation", -1, 1,
                  value = 0, step = 0.1)
    )
  )
)