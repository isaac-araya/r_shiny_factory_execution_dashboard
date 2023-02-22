#Execution Dashboard Open Source Version
library(shiny)
library(shinydashboard)
library(DT)
library(readr)
library(reactable)

execution_dashboard = "C:/R/execution_dashboard/" #location where the app is saved (development folder)

#file_apo_wip_status             = "\\\\azATSHFS.intel.com\\azATAnalysis$\\MAOATM\\platform\\outputfolder\\apo_wip_status_summary.tab"
#file_apo_wip_status_and_platform_MES             = "\\\\azATSHFS.intel.com\\azATAnalysis$\\MAOATM\\platform\\outputfolder\\wip_lot_status_and_platform_MES.tab"

file_apo_wip_status             = "C:/R/execution_dashboard/data/apo_wip_status_summary.tab"
file_apo_wip_status_and_platform_MES             = "C:/R/execution_dashboard/data/wip_lot_status_and_platform_MES.tab"


#Hyperlinks:
hyperlink_bookdown_r = "https://mastering-shiny.org/"
#singlestop4.0
runApp(execution_dashboard, host = "0.0.0.0", port=415,launch.browser=TRUE) ## POR for server
#runApp(singlestop3, host = "127.0.0.1", port=4588,launch.browser=TRUE) ## development option
#runApp(emibserver_1274_R, host = "0.0.0.0", port=1274,launch.browser=FALSE) ## POR for server
