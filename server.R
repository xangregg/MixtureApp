library(shiny)
library(mixtools)
shinyServer(function(input, output) {
    
    output$fit <- reactive({
        normalmixEM(faithful$eruptions, k=input$k)

    })
    output$main_plot <- renderPlot({
        fit2 <- normalmixEM(faithful$eruptions, k=input$k);
        
        
        hist(faithful$eruptions,
             probability = TRUE, ylim=c(0,1.2),
             breaks = as.numeric(input$n_breaks),
             xlab = "Duration (minutes)",
             main = "Geyser eruption duration")

        for(i in 1:input$k) { curve(dnorm(x,mean=fit2$mu[i], sd=fit2$sigma[i])/2, col=i+1, lwd=2, add=TRUE) }
        
    })
})