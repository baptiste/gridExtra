library(shiny);library(ggplot2);library(gridExtra)

ui <- bootstrapPage(
  tabPanel("Plot", plotOutput("plot_vt"))
)

wrap_gtable <- function(g){
  class(g) <- c("arrange", class(g))
  g
}

print.arrange = function(x){
 if(is.ggplot(x))  x <- ggplot2::ggplotGrob(x)
  grid::grid.draw(x)
}

server <- function(input, output, session) {
  output$plot_vt <- renderPlot({
    print("plot output")
    plot_vt_reactive()
  }, width=400, height=400)
  
  plot_vt_reactive <- reactive({
    p=qplot(1:5, 1:5)
    wrap_gtable(arrangeGrob(p,p))
}
)
}
shinyApp(ui = ui, server = server)
