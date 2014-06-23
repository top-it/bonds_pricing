library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Bonds Pricing"),
    sidebarPanel(
      
      numericInput('face','Face Value',100000,min=NA,max=NA,step = NA),
      numericInput('coupon','Coupon payment',1000,min=NA,max=NA,step = NA),
      numericInput('n','Number of coupon periods remaining',5,min=1,max=100,step = 1),
      numericInput('yield','Yield to maturity',0.5,min=0,max=100,step=0.1),
      
      
      submitButton('Submit')
      
      
      
      
      
      ),
    mainPanel(
      h3("Results :"),
    
      
      h4("Price : "),
      verbatimTextOutput("price")
      )
    
    )
  
  
  )