#Execution Dashboard Open Source Version
library(shiny)
library(shinydashboard) #replace with library(semantic.dashboard) for darck theme
library(DT)
library(readr)
library(reactable)


server <- function(input, output, session) {
  #Tab_01 
  # Create a reactive expression
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  output$summary <- renderPrint({
    # Use a reactive expression by calling it like a function
    summary(dataset())
  })
  
  output$table <- renderTable({
    dataset()
  })
  # Tab 02 Reactable
  output$table_tab_02 <- renderReactable({
    reactable(
      iris[ , ],
      showPageSizeOptions = TRUE,
      pageSizeOptions = c(4, 8, 12),
      defaultPageSize = 4,
      showSortIcon = TRUE,
      
      filterable = TRUE, minRows = 5, searchable = TRUE,
      defaultColDef = colDef(
        header = function(value) gsub(".", " ", value, fixed = TRUE),
        cell = function(value) format(value, nsmall = 1),
        align = "center",
        minWidth = 70,
        headerStyle = list(background = "#f7f7f8"),
        sortNALast = TRUE,
        defaultSortOrder = "asc"
      ),
      columns = list(
        Species = colDef(minWidth = 140, filterable = FALSE)  # overrides the default
        # Make specific column not filterable
      ),
      defaultSorted = c("Species", "Petal.Length"),
      bordered = TRUE,
      highlight = TRUE
    )
  })
  #Tab_03 
  # Create a table using reactable package
  #load_tab_03            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)  
  output$table_tab_03 <- renderReactable({
    reactable(apo_wip_status[1:5, ], 
    compact = TRUE,
    columns = list(
      state = colDef(
        style = function(value) {
          if (value == 'I') {
            color <- "#008000"
          } else if (value == 'D') {
            color <- "#e00000"
          } else {
            color <- "#777"
          }
          list(color = color, fontWeight = "bold")
        }
      ),
      bqty = colDef(
        style = function(value) {
          if (value > 31) {
            color <- "#008000"
          } else if (value < 30) {
            color <- "#e00000"
          } else {
            color <- "#777"
          }
          list(color = color, fontWeight = "bold")
        }
      )
      
    ))
  })
  # Tab Book Mastering Shiny
  output$frame_bookdown_Rshiny <- renderUI({
    tags$iframe(src=paste(hyperlink_bookdown_r), style="height:1200px;width:100%;", frameborder = "no")
  })
  
  # Tab All ASPIRE APO's
  #ASPIRE Report Tables
  apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
  load_apo_wip_status_and_platform_MES  <- read_delim(file_apo_wip_status_and_platform_MES,"\t", escape_double = FALSE, trim_ws = TRUE)
  
  output$aspire_apos_dof_ui <- renderUI({
    DOF_apo_wip_status            = file.info(file_apo_wip_status)$mtime
    p(tags$code(paste("DOF:",DOF_apo_wip_status)))
  })
  output$wip_lot_status_and_platform_MES_dof_ui <- renderUI({
    DOF_wip_lot_status_and_platform_MES            = file.info(file_apo_wip_status_and_platform_MES)$mtime
    p(tags$code(paste("DOF:",DOF_wip_lot_status_and_platform_MES)))
  })
  
  output$apo_status <- renderDataTable(
    datatable(apo_wip_status, options=list(scrollX=TRUE,autoWidth=TRUE, pageLength = 100),rownames=FALSE,escape=FALSE,filter='top'))  
  #----------------    Outputs: MEW WIP Status    --------------
  output$wip_lot_status_and_platform_MES <- renderDataTable(
    datatable(load_apo_wip_status_and_platform_MES, options=list(scrollX=TRUE,autoWidth=TRUE, pageLength = 100),rownames=FALSE,escape=FALSE,filter='top'))    
  
}