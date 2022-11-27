library(reactable)
reactable(sleep[1:6, ], 
          rowStyle = function(index) {
            if (sleep[index, "extra"] < -1) {
              list(background = "rgba(0, 0, 0, 0.05)")
            }
          },
          rowClass = function(index) {
            if (sleep[index, "extra"] < -1) {
              "bold"
            }
          }
)
.bold {
  font-weight: bold;
}