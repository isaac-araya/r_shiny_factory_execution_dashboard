library(shiny)
library(shinydashboard)
library(DT)

execution_dashboard = "C:/R/execution_dashboard/temp/" #location where the app is saved (development folder)

#singlestop4.0
runApp(execution_dashboard, host = "0.0.0.0", port=415,launch.browser=TRUE) ## POR for server
#runApp(singlestop3, host = "127.0.0.1", port=4588,launch.browser=TRUE) ## development option
#runApp(emibserver_1274_R, host = "0.0.0.0", port=1274,launch.browser=FALSE) ## POR for server
