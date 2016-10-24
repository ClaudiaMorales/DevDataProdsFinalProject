library(datasets)
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
     
     # Application title
     titlePanel("Linear Distance Between Cities"),
     
     # Sidebar with controls to provide a caption, select a dataset to view. Note that
     # changes made to the caption in the textInput control are
     # updated in the output area immediately as you type
     sidebarLayout(
          sidebarPanel(
               textInput("caption", "Caption:", "Data Summary"),
               
               selectInput("dataset", "Choose a dataset:", 
                           choices = c("eurodist", "UScitiesD"))
          ),
          
          
          # Show the caption, a summary of the dataset and a matrix 
          # table with the distance between observations
          mainPanel(
               h3(textOutput("caption", container = span)),
               
               verbatimTextOutput("summary")
               
               
               )
          )
     )
)