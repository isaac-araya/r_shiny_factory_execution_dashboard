library(shiny)
library(shinydashboard)
library(DT)

app_loc_execution_dashboard = "C:/R/execution_dashboard/" #location where the app is saved (development folder)


runApp(singlestop4, host = "0.0.0.0", port=415,launch.browser=TRUE) ## POR for server
