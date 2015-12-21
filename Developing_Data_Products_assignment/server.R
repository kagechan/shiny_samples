library(shiny)
source("rankall.R")

shinyServer(
  function(input, output){
    outcome <- reactive({input$disease})
    num <- reactive({
      switch(input$rankBtn,
             "1" = "best",
             "2" = "worst",
             "3" = input$rankno)
    })
    output$result <- renderTable({
      rankall(outcome(), num())
    })
  }
)