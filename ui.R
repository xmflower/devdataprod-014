library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Car miles/gallon prediction"),
    sidebarPanel(
        radioButtons("am", "Transmission: ", c("automatic" = 0, "manual" = 1)),
        selectInput("cyl", "Number of cylinders: ", c("4" = 4, "6" = 6, "8" = 8)),
        numericInput("hp", "Gross horsepower (50-350):", 50, min = 50, max = 350, step = 1),
        submitButton("submit")

    ),
    mainPanel(
        h3("Introduction:"),
        p("Select the car's transmission, number of cylinders, 
          and enter gross horsepower in the left panel, then click \"submit\" button, 
          you'll get the prediction of the car's miles/(us) gallon in the right panel."),
        h3("Results of prediction"),
        h4("Transmission"),
        verbatimTextOutput("oam"),
        h4("Number of cylinders"),
        verbatimTextOutput("ocyl"),
        h4("Gross horsepower"),
        verbatimTextOutput("ohp"),
        h4("Prediction of Miles/(US) gallon:"),
        verbatimTextOutput("ompg")
        )
))