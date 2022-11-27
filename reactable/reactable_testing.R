library(reactable)

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

apo_wip_status            <- read_delim(file_apo_wip_status,"\t", escape_double = FALSE, trim_ws = TRUE)
load_apo_wip_status_and_platform_MES  <- read_delim(file_apo_wip_status_and_platform_MES,"\t", escape_double = FALSE, trim_ws = TRUE)


reactable(
  apo_wip_status[1:5, ],
  
  bordered = TRUE,
  highlight = TRUE
)