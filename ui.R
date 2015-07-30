
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Dynamic filtering of Diamonds dataset from ggplot2"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("text_value", "Plot title", "type here")
      # Dynamic UI
#       ,uiOutput("ui_var_x")
#       ,uiOutput("ui_var_y")
#       ,uiOutput("ui_var_color")
#       ,uiOutput("ui_var_size")
#       # Dynamic Subsetting
#       ,hr()
#        ,h3("Subset the data")
#        ,uiOutput("ui_clarity")
#       ,uiOutput("ui_cut")
      ,hr()
      ,a(href="http://docs.ggplot2.org/0.9.3.1/diamonds.html","Data description")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tableOutput("table")
      ,plotOutput("plot")
    )
    )
  )
)