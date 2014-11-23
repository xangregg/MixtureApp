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
                         min = 2, max = 5, value = 2, step = 1),
            h2("Documentation"),
            p("This app lets you interactively explore and visualize the results of a normal mixture distribution, which models a data set as a combination of multiple normal distributions."),
            p("The slider controls the number of normal distribution. Each normal distribution is shown as a curve in a different color. The vertical scale of the curves is one half that of the histogram axis."),
            p("In this toy version, the data set is fixed to be the geyser eruption data.")
        ),
        mainPanel(
            plotOutput(outputId = "main_plot", height = "300px")
        )
    )
#))

#shinyUI(bootstrapPage(
    
    
))