library(reactable)

#reactable(iris)

reactable(
  iris[1:5, ],
  defaultColDef = colDef(
    header = function(value) gsub(".", " ", value, fixed = TRUE),
    cell = function(value) format(value, nsmall = 1),
    align = "center",
    minWidth = 70,
    headerStyle = list(background = "#f7f7f8")
  ),
  columns = list(
    Species = colDef(minWidth = 140)  # overrides the default
  ),
  bordered = TRUE,
  highlight = TRUE
)