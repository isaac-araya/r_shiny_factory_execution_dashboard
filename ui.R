library(shiny)
library(shinydashboard)


# - Shiny simple but powerful navigation page. 
#Use Dashboard if you expect significant number of pages or tabs, 
#or if you plan to have drill down menues


#--------------- User Interface - Name of your project here -----------------                 
ui <- navbarPage(title = "",
                 #-|--------------- UI: Tab 01 ---------------
                 tabPanel("tab_01", 
                          ui <- fluidPage(
                            fluidRow(
                              column(12, offset = 0
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



#Other options:

#ui <- dashboardPage(
#  dashboardHeader(),
#  dashboardSidebar(),
#  dashboardBody()
#)