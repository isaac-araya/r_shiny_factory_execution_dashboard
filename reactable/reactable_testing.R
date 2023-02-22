library(reactable)
library(readr)

#reactable(iris)

apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
load_apo_wip_status_and_platform_MES  <- read_delim(file_apo_wip_status_and_platform_MES,"\t", escape_double = FALSE, trim_ws = TRUE)


reactable(
  apo_wip_status[1:5, ],
  defaultColDef = colDef(
    header = function(value) gsub(".", " ", value, fixed = TRUE),
    cell = function(value) format(value, nsmall = 1),
    align = "center",
    minWidth = 70,
    headerStyle = list(background = "#f7f7f8")
  ),
  columns = list(
    purpose = colDef(minWidth = 140)  # overrides the default
  ),
  bordered = TRUE,
  highlight = TRUE
)

#reactable(local data set)
library(reactable)
library(readr)

file_apo_wip_status             = "C:/R/execution_dashboard/data/apo_wip_status_summary.tab"
file_apo_wip_status_and_platform_MES             = "C:/R/execution_dashboard/data/wip_lot_status_and_platform_MES.tab"

apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
load_apo_wip_status_and_platform_MES  <- read_delim(file_apo_wip_status_and_platform_MES,"\t", escape_double = FALSE, trim_ws = TRUE)


reactable(
  apo_wip_status[1:5, ],
  
  bordered = TRUE,
  highlight = TRUE
)



library(reactable)

reactable(sleep[ , ], columns = list(
  extra = colDef(
    style = function(value) {
      if (value > 0) {
        color <- "#008000"
      } else if (value < 0) {
        color <- "#e00000"
      } else {
        color <- "#777"
      }
      list(color = color, fontWeight = "bold")
    }
  )
))

library(reactable)
apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
reactable(apo_wip_status[1:5, ], columns = list(
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

library(reactable)
apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
reactable(apo_wip_status[1:5, ], columns = list(
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
  )
))

library(reactable)
apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
reactable(apo_wip_status[1:5, ], columns = list(
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