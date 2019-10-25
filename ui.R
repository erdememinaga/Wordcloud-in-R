library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Kelime Bulutu oluşturucu"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      fileInput("wc","Dosya Yukle",F,"text/plain"),
      actionButton("update","Kelime Bulutu Oluştur"),
    
    sliderInput("freq",
                "kelime sıklığı:",
                min = 1,  max = 50, value = 15),
    sliderInput("max",
                "max kelime sayısı:",
                min = 1,  max = 300,  value = 100)
  ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("wcplot")
    )
  )
))
