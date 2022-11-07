library(shiny)
library(shinydashboard) #replace with library(semantic.dashboard) for darck theme
#library(semantic.dashboard)
#2nd phase
library(DT)
#library(shinydashboardPlus)
#install.packages("lintr") # this will check if the code complies with R practices
#once lintr is installed, run in console: lintr::lint("app.R")


ui <- navbarPage(title="",
     #-|--------------- UI: Tab 01 ---------------
     tabPanel("tab_01", 
              ui <- fluidPage(
                fluidRow(
                  column(12, offset = 0,
                     selectInput("dataset", label = "Dataset", choices = ls("package:datasets"))
                     ,verbatimTextOutput("summary")
                     ,tableOutput("table")
                  )
                )
              )
     )
     ,tabPanel("tab_02", 
               ui <- fluidPage(
                 fluidRow(
                   column(12, offset = 0
                   )
                 )
               )
     )                 
)
#tableOutput("table")