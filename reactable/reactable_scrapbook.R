
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