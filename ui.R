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
      verbatimTextOutput("price"),
      
      h4("User Guide"),
      p("This simple application evaluate a vanilla bond instrument."),
      h5("Parameters :"),
      p("Face value : the last paiement"),
      p("Coupon : The periodic paiement"),
      p("Number of coupon : the remaining periods until maturity"),
      p("Yield to maturity : Interest rate at the date of evaluation"),
      
      p("Submit Button : luch the calculation"),
      
      h5("Source code : "),
      
      p("Available in the github repo : https://github.com/top-it/bonds_pricing ")
      
      )
    
    )
  
  
  )