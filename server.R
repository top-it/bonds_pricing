library(shiny)
diabetesRisk<-function(glucose) glucose/200
shinyServer(
  function(input,output){
    
    pricer <- reactive({
      F<- input$face;
      i<- input$yield;
      C<-input$coupon;
      n<-input$n;
      P <-F/(1+i)^n + C/i*(1-1/(1+i)^n);
      
      
      
      as.numeric(P);
    }
      )
    
    
    
    output$inputValue<-renderPrint({input$yield})
    output$price<-renderPrint(pricer())
  }
  
  
  )