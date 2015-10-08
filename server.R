library(shiny)

shinyServer(function(input, output) {
  
  output$text_1 <- renderText({ 
    paste("You have selected ", 
          paste(input$time, ifelse(input$time<12, "AM.", "PM.")))
    })
  
  output$calc_1 <- renderText({ 
    paste ("For one cycle of sleep, you should wake up at:", 
           ifelse(input$time >= 14, ifelse(input$time+1.5-24 < 0, input$time+1.5,input$time+1.5-24 ), input$time+1.5),
           ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
  output$calc_2 <- renderText({ paste ("For two cycles of sleep, you should wake up at:", 
                                       ifelse(input$time >= 14, ifelse(input$time+2*1.5-24 < 0, input$time+2*1.5,input$time+2*1.5-24 ), input$time+2*1.5),
                                       ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM", "PM")
            )})
  
  
  output$calc_3 <- renderText({paste ("For three cycles of sleep, you should wake up at:", 
                                      ifelse(input$time >= 14, ifelse(input$time+3*1.5-24 < 0, input$time+3*1.5,input$time+3*1.5-24 ), input$time+3*1.5),
                                      ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
  output$calc_4 <- renderText({ paste ("For four cycles of sleep, you should wake up at:", 
                                       ifelse(input$time >= 14, ifelse(input$time+4*1.5-24 < 0, input$time+4*1.5,input$time+4*1.5-24 ), input$time+4*1.5),
                                       ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
  output$calc_5 <- renderText({ paste ("For five cycles of sleep, you should wake up at:", 
                                       ifelse(input$time >= 14, ifelse(input$time+5*1.5-24 < 0, input$time+5*1.5,input$time+5*1.5-24 ), input$time+5*1.5),
                                       ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
  output$calc_6 <- renderText({ paste ("For six cycles of sleep, you should wake up at:", 
                                       ifelse(input$time >= 14, ifelse(input$time+6*1.5-24 < 0, input$time+6*1.5,input$time+6*1.5-24 ), input$time+6*1.5),
                                       ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
  output$calc_7 <- renderText({ paste ("For seven cycles of sleep, you should wake up at:", 
                                       ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5),
                                       ifelse(ifelse(input$time >= 14, ifelse(input$time+7*1.5-24 < 0, input$time+7*1.5,input$time+7*1.5-24 ), input$time+7*1.5), "AM.", "PM.")
    )})
  
  
      })
 