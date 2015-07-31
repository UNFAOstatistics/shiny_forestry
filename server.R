
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)


shinyServer(function(input, output) {

  
#   # ---------------------------------------------------------------------------- # 
#   # Plot definitions
#   output$ui_var_x <- renderUI({
#     numeric_vars <- as.character(names(diamonds)[sapply(diamonds, is.numeric)])
#     list(selectInput("var_x_value", h5("pick X-var"), choices=numeric_vars))
#   })
#   
#   output$ui_var_y <- renderUI({
#     numeric_vars <- names(diamonds)[sapply(diamonds, is.numeric)]
#     numeric_vars <- numeric_vars[!(numeric_vars %in% input$var_x_value)]
#     list(selectInput("var_y_value", h5("pick Y-var"), choices=numeric_vars))
#   })
# 
#   output$ui_var_size <- renderUI({
#     numeric_vars <- names(diamonds)[sapply(diamonds, is.numeric)]
#     numeric_vars <- numeric_vars[!(numeric_vars %in% input$var_x_value)]
#     numeric_vars <- numeric_vars[!(numeric_vars %in% input$var_y_value)]
#     list(selectInput("var_size_value", h5("pick size-var"), choices=numeric_vars))
#   })    
#   output$ui_var_color <- renderUI({
#     varnames <- names(diamonds)
#     varnames <- varnames[!(varnames %in% input$var_x_value)]
#     varnames <- varnames[!(varnames %in% input$var_y_value)]
#     varnames <- varnames[!(varnames %in% input$var_size_value)]
#     list(selectInput("var_color_value", h5("pick color-var"), choices=varnames))
#   })
#      
#   # ---------------------------------------------------------------------------- # 
#   # subsetting
#   
#   output$ui_clarity <- renderUI({
#     clarity <- as.character(unique(diamonds$clarity))
#     list(selectInput("clarity_value", h5("Pick a clarity"), choices = clarity, selected=clarity[1]))
#     })
#   
#   output$ui_cut <- renderUI({
#     cuts <- as.character(unique(diamonds[diamonds$clarity %in% input$clarity_value,]$cut))
#     list(selectInput("cut_value", h5("Pick a cut"), choices = cuts, selected = cuts[1]))
#     })
#   
# #   output$output_ui_slider_x <- renderUI({
# #     dat <- diamonds[diamonds$clarity %in% input$clarity_value, ] 
# #     dat <- dat[dat$cut   %in% input$cut_value, ]
# #     r <- range(dat[[input$var_x_value]])
# #     sliderInput("slider_x_value", "Set range for x-axis:", min=r[1], max=r[2], value=r[1]:r[2])
# #   })
# #   
# #   output$output_ui_slider_y <- renderUI({
# #     dat <- diamonds[diamonds$clarity %in% input$clarity_value, ] 
# #     dat <- dat[dat$cut   %in% input$cut_value, ]
# #     minim <- min(dat[[input$var_y_value]])
# #     maxim <- max(dat[[input$var_y_value]])
# #     sliderInput("slider_y_value", "Set range for y-axis:", min=minim, max=maxim, value=minim:maxim)
# #   })
  
  
  
  # ------------------------------------------------------------- #
  # ------------------------------------------------------------- #
  # PLOT
  output$plot <- renderPlot({
    
    # ------------------------------------------------------------- #
    # subset data
#     dat <- diamonds[diamonds$clarity %in% input$clarity_value, ] 
#     dat <- dat[dat$cut   %in% input$cut_value, ]
#     # Define the plot
#     p <- ggplot(dat, aes_string(x= input$var_x_value,
#                               y= input$var_y_value,
#                               size = input$var_size_value,
#                               color = input$var_color_value))
#     p <- p + geom_point()
#     p <- p + labs(title = input$text_value)
#     #p <- coord_cartesian(ylim=c(input$slider_y_value[1],input$slider_y_value[2]))
    
    # ------------------------------------------------------------- #
    
#     # Define the plot
#     p <- ggplot(diamonds, aes(x    = carat,
#                               y    = depth,
#                               size = price,
#                               color = depth))
#     p <- p + geom_point()
#     p <- p + labs(title = input$text_value)
#     print(p)
    
  })
  
  # ------------------------------------------------------------- #
  # ------------------------------------------------------------- #
  # PLOT

    output$table <- renderTable({
    
#     # ------------------------------------------------------------- #
#     # subset data
#     dat <- diamonds[diamonds$clarity %in% input$clarity_value, ] 
#     dat <- dat[dat$cut   %in% input$cut_value, ]
      
    
    head(diamonds)
    
  })
  
  
})
