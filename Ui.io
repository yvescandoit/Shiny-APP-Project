library(ggplot2)
library(dplyr)
# Define UI for application that draws a histogram
ui <- fluidPage(
  fluidRow(      
    column(6,
           selectInput("Species","Choose Your Specie",choices = iris$Species,   #selection input for Species
                       width = "100%"
           )
    ),
    column(4,
           selectInput("Type","Sepal or Petal",choices = c("Sepal","Petal")))  #selection input for Sepal or petal
  ),
  fluidRow(12,
           plotOutput("plotR"))
)

