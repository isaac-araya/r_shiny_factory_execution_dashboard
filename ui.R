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
     #-|--------------- UI: Tab 02 Basic reactable output ---------------  
     #https://glin.github.io/reactable/articles/examples.html#basic-usage
     ,tabPanel("tab_02", 
               ui <- fluidPage(
                 fluidRow(
                   column(12, offset = 0,
                    p("Tables are sortable by default. You can sort a column by clicking on its header, or sort multiple columns by holding the shift key while sorting"),
                    reactableOutput("table_tab_02")
                   )
                 )
               )
     )
     #-|--------------- UI: Tab 03 Next Level Reactable Output ---------------     
    ,tabPanel("tab_03", 
              ui <- fluidPage(
                fluidRow(
                  column(12, offset = 0,
                    p("Tables are sortable by default. You can sort a column by clicking on its header, or sort multiple columns by holding the shift key while sorting"),
                    reactableOutput("table_tab_03")
                  )
                )
              )
    )
     ,tabPanel("Book Mastering Shiny", 
                ui <- fluidPage(
                  fluidRow(
                    htmlOutput("frame_bookdown_Rshiny")
                  )
                )
     )
     ,tabPanel("All ASPIRE APO's", 
               ui <- fluidPage(
                 fluidRow(
                   p("Data in this report is refreshed every 30 min by SQLPF. It may contain additional data latency from MARS interface."),
                   br(),
                   uiOutput("aspire_apos_dof_ui"),
                   DTOutput("apo_status"),
                   p(tags$code(paste("Source:",file_apo_wip_status)))    
                 )
               )
     )
     #-|---------------- UI: MES Lot report  ---------------
     ,tabPanel("ALL MES WIP", 
               ui <- fluidPage(
                 fluidRow(
                   p("Data in this report is refreshed every 30 min by SQLPF. It may contain additional data latency from XEUS interface."),
                   br(),
                   uiOutput("wip_lot_status_and_platform_MES_dof_ui"),
                   DTOutput("wip_lot_status_and_platform_MES"),
                   p(tags$code(paste("Source:",file_apo_wip_status_and_platform_MES)))    
                 )
               )
     )
)
#tableOutput("table")