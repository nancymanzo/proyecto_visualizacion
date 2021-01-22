pacman::p_load(shiny, shinydashboard, dashboardthemes, shinythemes, shinyWidgets,
               tidyverse, rebus, scales, png, fresh, plotly)

# fuentes_Sys <- list.files("~/Library/Fonts/") %>%
#  str_remove_all(pattern = "." %R% capture(one_or_more(WRD)) %R% END)


mytheme <- create_theme(
    theme = "default",
    bs_vars_navbar(
        default_bg = "#751b7a",
        default_color = "#FFFFFF",
        default_link_color = "#FFFFFF",
        default_link_active_color = "#FFFFFF"
    ),
    bs_vars_color(
        gray_base = "#000000",
        brand_primary = "#751b7a",
        brand_success = "#4f4c4c",
        brand_info = "#758bd1",
        brand_warning = "#d1ab75",
        brand_danger = "#d175b8"
    ),
    bs_vars_state(
        success_text = "#FFF",
        success_bg = "#c9d175",
        success_border = "#c9d175",
        info_text = "#FFF",
        info_bg = "#3f2d54",
        info_border = "#3f2d54",
        danger_text = "#FFF",
        danger_bg = "#d175b8",
        danger_border = "#d175b8"
    ),
    bs_vars_wells(
        bg = "#FFF",
        border = "#3f2d54"
    ),
    output_file = "www/mytheme.css"
)


customLogo <- shinyDashboardLogoDIY(
    boldText = "R - Ladies"
    ,mainText = "Guadalajara"
    ,textSize = 20
    ,badgeText  = icon("chart-line")
    ,badgeTextColor = "white"
    ,badgeTextSize = 2
    ,badgeBackColor = "#751b7a"
    ,badgeBorderRadius = 3
)


ui<- navbarPage(
    title = customLogo,
    theme = "mytheme.css",
    footer = includeHTML("./www/footer.html"),
    
    tabPanel("Inicio", tabName = "inicio", icon = icon("home"),
             fluidPage(h1(align="center", "R - Ladies Guadalajara"),
                       
                       h4("R–Ladies Guadalajara es uno de los 197 capítulo que compone R – Ladies global, 
                     el cual tiene la finalidad de integrar a diversos grupos minoritarios a el mundo de la programación. 
                     La inauguración del capítulo local se realizo el 15 de agosto del 2020, en el evento virtual titulado: 
                     “Primer encuentro anual R-Ladies México” en la cual se reunieron a las y los miembros de R–Ladies del 
                     todo país para estrechar lazos, compartir experiencias y conocimientos.Es con el evento anual que R - 
                     Ladies Guadalajara, se integra como el 9no capítulo de",(a(target="_blank",href="http://rladiesmx.netlify.app/","México.")), align = "justify",br()),
                       
                       
                       h4(a(target="_blank",href="https://rladies.org/","R-Ladies"), "es una organización mundial cuya misión es promover la diversidad de género en la comunidad R.
                        La comunidad R sufre de una subrepresentación de géneros minoritarios (incluidas, entre otras, mujeres 
                        cis /trans, hombres trans, no binarios, queer) en todos los roles y áreas de participación, ya sea 
                        como líderes,desarrolladores de paquetes, oradores, participantes de conferencias, educadores o 
                        usuarixs.", align = "justify",br()),
                       
                       
                       h4(includeHTML("./www/rladies_global.html")),
                       br(),
                       
                       
                       h4("Como iniciativa de diversidad, la misión de R-Ladies es lograr una representación proporcionada alentando,
                     inspirando y empoderando a las personas de géneros actualmente subrepresentados en la comunidad R.
                     El enfoque principal de R-Ladies, por lo tanto, es apoyar a los entusiastas del género R de las 
                     minorías para que logren su potencial de programación, mediante la construcción de una red global
                     colaborativa de líderes, mentores, estudiantes y desarrolladores de R para facilitar el progreso individual y 
                     colectivo en todo el mundo.", align = "justify", br())
                       
                       
             )),
    
    navbarMenu("Proyecto",
               tabPanel("25N",
                        h1(align="center", "Día contra la erradicación de la violencia"),
                        h3("De acuerdo a lo que nos ordeno Balu", align = "justify"),
                        sidebarPanel(
                            DT::dataTableOutput("dfmapa"), filter="top"),
                            mainPanel(
                                plotlyOutput("bagheera"), br()
                            ))
    ),
                        
                        

    #########################################################################
    
    tabPanel("Código de conducta", tabName = "codigo", icon = icon("calendar"),
             h4(includeHTML("./www/codigo_conducta.html")),
             br()),
    
    ########################################################################
    
    tabPanel("Contacto", tabName = "contacto", icon = icon("users"),
             h1(strong("Redes sociales"), align = "center"),
             h3("capítulo en Guadalajara"),
             h3("Organizadoras", align="center",br()),
             fluidRow(
                 img(src="1.jpg", align = "left", height = '170px', width = '170px'),
                 br(),
                 fluidRow(
                     h4(strong("Nancy Manzo Romero", aling="left", br()),
                        h4("Egresada de la licenciatura en economía por la Universidad de Guadalajara, con interés especial
                 en la investigación cuantitativa sobre las trabajadoras del hogar y el empleo laboral feminizado.
                 Creyente de que los datos pueden ayudar a explicar mejor un todo. Fan de los espacios creados entre mujeres.",
                           align = "justify"),br(),
                        a("nancy.manzo@alumnos.udg.mx", href = "mailto:nancy.manzo@alumnos.udg.mx"),br(),
                        a("@Jellowiss", href = "https://twitter.com/Jellowiss")), br(),
                     
                     
                     img(src="2.jpg", align = "left", height = '150px', width = '150px'),
                     h4(strong("Paola Manzo Romero"),
                        h4("Economista - datera, con gusto por la ciencia de datos y los temas con enfoque de género. Interesada por
                    visibilizar, analizar y estudiar la violencia de género hacia las mujeres. Sé que los datos abren vías para las mejoras de nuestro
                    entorno.", align = "justify"),br(),
                        a("paolamanzorom@gmail.com", href = "mailto:paolamanzorom@gmail.com"),br(),
                        a("@paomrom", href = "https://twitter.com/paomrom")), br(),
                     
                     
                     img(src="3.jpg", align = "left", height = '150px', width = '150px'),
                     h4(strong("Liz Gutiérrez", aling="left", br(),
                               h4("La chida de Liz",
                                  align = "justify"),br()),
                        a("lizgutt77@gmail.com", href = "mailto:lizgutt77@gmail.com"),br(),
                        a("@lizgutt", href = "https://twitter.com/lizgutt")), br(),
                     
                     img(src="4.jpg", align = "left", height = '150px', width = '150px'),
                     h4(strong("Claudia Jiménez Solís", aling="left", br(),
                               h4("La chida de Clau", align = "justify"),br()),
                        a("claudiajimenezsolis@gmail.com", href = "mailto:claudiajimenezsolis@gmail.com"),br(),
                        a("@Claudia_ajs", href = "https://twitter.com/Claudia_ajs")), br())
             )
    ) 
) 
