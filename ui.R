library(shiny)
shinyUI(fluidPage(
  titlePanel("Sleep Time Calculator"),
  sidebarLayout(
    sidebarPanel(
      h3("Looks familiar ?"),
      img(src= "Sleepy-woman.jpg", width= 300, height=200),
      br(),
      h4("Want to avoid this?"),
      br(),
      sliderInput("time", "Choose your bedtime ",  
                  min = 0, max = 24, value=0, step = 1),
      h5("Values are encoded as following: "),
      h5("AM time from 0 (00:00) to 12 (12:00)"),
      h5("PM time from 12 (12:00) to 24 (24:00)")),
    
    mainPanel(
        h3("Time to go to bed..."),
        p("Sleep cycles are very important for a good quality of sleep. When we sleep, we go through a cycle of sleep phases. The first phase is light sleep, followed by deep sleep and a dream state referred to as REM-sleep. A full sleep cycle lasts about 90 minutes and is normally repeated several times each night.Sleep specialists recommended you should aim on average for 5 cycles of sleep per night."),
        p("This application allows you to calculate the best hour to wake up, based on the time you go to bed and proposing different wake-up times according to how many sleep cycles you aim for. "),
        p("Please choose a bedtime on the slider left of the page"),
        textOutput("text_1"),
        br(),
        textOutput("calc_1"),
        textOutput("calc_2"),
        textOutput("calc_3"),
        textOutput("calc_4"),
        strong(textOutput("calc_5")),
        textOutput("calc_6"),
        textOutput("calc_7"),
        h3("How does it work?"),
        p("Based on the bedtime input from the user, the application calculates the best time to wake-up based on 90 minutes sleep cycles. One sleep cycle being 90 minutes and an average of 5 sleep cycles per night is recommended, the application computes 5 sleep cycles * 90 minutes to arrive at the best wake up time. Please note that we don't take into consideration the amount of time it takes to fall asleep. A simple assumption is that the bedtime chosen is the hour at which the user actually falls asleep. If the time to fall asleep is longer (e.g: 15 minutes), simply add the 15 minutes to the wake-up time initially calculated by the application.The choice of ")
       
      )
  )))

