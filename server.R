library(shiny)
library(datasets)
data(mtcars)

shinyServer(
    function(input, output){
               
        output$oam <- renderPrint({if (input$am == 0) "automatic" else "manual"})
        output$ocyl <- renderPrint({input$cyl})
        output$ohp <- renderPrint({input$hp})
        
        output$ompg <- renderPrint({
            fit <- lm(mpg ~ am + cyl + hp, data = mtcars)
            car <- data.frame(am = as.numeric(input$am), cyl = as.numeric(input$cyl), hp = input$hp)
            predict(fit, newdata = car)[[1]]})
    }
)