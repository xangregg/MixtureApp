shinyUI(fluidPage(
    titlePanel("Applying Normal Mixtures to Old Faithful Eruption Data"),
    
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "n_breaks",
                        label = "Number of bins in histogram (approximate):",
                        choices = c(20, 30, 40),
                        selected = 30),
                                
            sliderInput(inputId = "k",
                         label = "Number of normal distributions:",
                         min = 2, max = 5, value = 2, step = 1)
        ),
        mainPanel(
            plotOutput(outputId = "main_plot", height = "300px")
        )
    )
#))

#shinyUI(bootstrapPage(
    
    
))