server <- function(input, output) {
  
  data <- reactive({
    iris %>% filter(Species == input$Species)   #data changes(reacts) to the change in the Species
  })
  
  output$plotR <- renderPlot({
    if (input$Type == "Sepal") {   #if the user selects Sepal then it will plot a scatter plot of Sepal length and width
      data() %>%
        ggplot(aes(x = Sepal.Length,y = Sepal.Width)) + geom_point()
    } else {
      data() %>%                   #else it will plot a scatter plot of Sepal length and width
        ggplot(aes(x = Petal.Length,y = Petal.Width)) + geom_point()
    }
  })
}
