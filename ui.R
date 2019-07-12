
library(shiny)
shinyUI(fluidPage(
    titlePanel("Image Processing"),
    sidebarLayout(
        sidebarPanel(
            fileInput(inputId = 'files', 
                      label = 'Select an Image',
                      multiple = TRUE,
                      accept=c('image/png', 'image/jpeg')),
            sliderInput("Rb", label = h6("Brightness (Red)"),min = -100, max = 100, value = 0),
            sliderInput("Gb", label = h6("Brightness (Green)"),min = -100, max = 100, value = 0),
            sliderInput("Bb", label = h6("Brightness (Blue)"),min = -100, max = 100, value = 0),
            sliderInput("Rc", label = h6("Contrast (Red)"),min = 0, max = 200, value = 100),
            sliderInput("Gc", label = h6("Contrast (Green)"),min = 0, max = 200, value = 100),
            sliderInput("Bc", label = h6("Contrast (Blue)"),min = 0, max = 200, value = 100),
            sliderInput("Rg", label = h6("Gamma Correction (Red)"),min = -10, max = 10, value = 1),
            sliderInput("Gg", label = h6("Gamma Correction (Green)"),min = -10, max = 10, value = 1),
            sliderInput("Bg", label = h6("Gamma Correction (Blue)"),min = -10, max = 10, value = 1)
        ),
        mainPanel(
            tableOutput('files'),
            uiOutput('images')
        )
    )
))