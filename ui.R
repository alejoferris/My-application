library(datasets)

shinyUI(
        navbarPage("",
                   tabPanel("Aplication",
                            fluidPage(
                                    sidebarLayout(
                                            sidebarPanel(
                                                    selectInput("variable", "Variable:",
                                                                c("Number of cylinders"     = "cyl" ,
                                                                  "Displacement (cu.in.)"   = "disp",
                                                                  "Gross horsepower"        = "hp"  ,
                                                                  "Rear axle ratio"         = "drat",
                                                                  "Weight (lb/1000)"        = "wt"  ,
                                                                  "1/4 mile time"           = "qsec",
                                                                  "V/S"                     = "vs"  ,
                                                                  "Transmission"            = "am"  ,
                                                                  "Number of forward gears" = "gear",
                                                                  "Number of carburetors"   = "carb"
                                                                ))
                                            ),
                                            
                                            mainPanel(
                                                    h3(textOutput("caption")),
                                                    
                                                    tabsetPanel(type = "tabs", 
                                                                tabPanel("Plot", plotOutput("mpgBoxPlot")),
                                                                tabPanel("Regression", 
                                                                         plotOutput("mpgPlot"),
                                                                         verbatimTextOutput("fit")
                                                                )
                                                    )
                                            )
                                    )
                            )
                   ),
                   tabPanel("Documentation",
                            p("The data was extracted from the 1974 Motor Trend US magazine,",
                              " and comprises fuel consumption and 10 aspects of automobile design and performance",
                              " for 32 automobiles (1973-74 models)."),
                            p("A data frame with 32 observations on 11 variables."),
                            p("You have to select a varible that you are interested to evaluate against MPG and you will",
                              "and you will see a grafic showing that relation, you can also see the regression model",
                              "model if you click in the Regression Tab"))
        )
)