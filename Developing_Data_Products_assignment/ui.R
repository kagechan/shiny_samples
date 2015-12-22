library(shiny)

shinyUI(fluidPage(
  titlePanel("Rank all the hospitals in each state in the U.S."),
  sidebarLayout(
    sidebarPanel(
      selectInput("disease", label= h3("Outcome name"),
                  choices = c("heart attack",
                              "heart failure",
                              "pneumonia"),
                  selected = "heart attack"),
      radioButtons("rankBtn",
                   label=h3("Rank of the hospitals in each state"),
                   choices = list("best" = 1, 
                                  "worst" = 2, 
                                  "any number (n-th best hospital). You can
                                   set it in the input box below" = 3),
                   selected = 1),
      numericInput("rankno", label="Number", value=3)
    
    ),
    mainPanel(tableOutput("result"))
  )
))