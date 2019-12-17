library(shiny)
library(UsingR)

shinyServer(function(input, output){
    

    output$plot1 <- renderPlot({
        
        if (input$regressor=="Solar R (lang)") {
            plot(airquality$Solar.R, airquality$Ozone, xlab ="Solar R (lang)",
                 ylab = "Ozone (ppb)", main = "Ozone Measurement")
        }
        else if (input$regressor=="Wind (mph)") {
            plot(airquality$Wind, airquality$Ozone, xlab ="Wind (mph)",
                 ylab = "Ozone (ppb)", main = "Ozone Measurement")
        }
        
        else {
            plot(airquality$Temp, airquality$Ozone, xlab ="Temperature (degrees F)",
                 ylab = "Ozone (ppb)", main = "Ozone Measurement")
        }

    })
})        


