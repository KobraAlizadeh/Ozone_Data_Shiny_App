library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Air Quality Data Analysis"),
    
    selectInput("regressor", "Plot Ozone as a function of:",
                    list("Solar R (lang)",
                      "Wind (mph)",
                      "Temperature (degrees F)")),
    
    mainPanel(
        plotOutput("plot1")
    )
))