## Load libraries
library(shinydashboard)
library(DT)
library(qrcode)

dashboardPage(skin = "green",
	dashboardHeader(
						title = "Indoor Farm Environmental Impact Open Data Tracker and Exploration Tool",
						titleWidth = 1280,
						tags$li(a(
								
									img(src = 'greenthumb.jpeg',title = "Green Thumb", height = "70px"),
									style = "padding-top:5px; padding-bottom:5px;"
								),
						class = "dropdown"
						),
						tags$li(a(
									
									img(src = 'ipfs1.png',title = "IPFS", height = "70px"),
									style = "padding-top:5px; padding-bottom:0px;"
								),
						class = "dropdown"
						)
					),

    dashboardSidebar(
		sidebarMenu(
			id = "tabs",
			menuItem("Config IPFS Service", tabName = "config", icon = icon("key")),
			menuItem("Upload Farm Data", tabName = "upload", icon = icon("cloud-upload-alt")),
			menuItem("Visualise Farm Data", tabName = "analyse", icon = icon("chart-line"))
		)
	),

	dashboardBody(
		tabItems(
			tabItem(tabName = "config",
				fluidRow(
					column(width = 3,
						radioButtons("nodesel", label = h4("Choose Service to Use"),choices = list("IPFS Node RPC API" = 1), selected = 1),
						hr(),
						hr(),
						uiOutput("localUIS"),
						uiOutput("pinataUIS")
					),
					column(width = 9,align="center",
						uiOutput("localUI"),
						uiOutput("pinKeyUI")
					)
				)
			),
			tabItem(tabName = "upload",
				fluidRow(
					# column(width = 1),
					column(width = 5,align="center",
						uiOutput("upFarmUI")
					),
					column(width = 7,align="center",
						uiOutput("dataCidUI"),
						plotOutput("dataCidQR")
					)
				)
			),
			tabItem(tabName = "analyse",
				fluidRow(
					column(width = 9,align="center",uiOutput("downFarmUI")),
					column(width = 3,align="center",actionButton("down_farmFile", label = "Analyse Farm Data",style="color: #fff; background-color: #419871; border-color: #419871")
						)
				),
				fluidRow(
					column(width = 12,align="center",
							# dataTableOutput("cidData"),
							uiOutput("visFarmUI")
						)
				),
			)
		)
	)
)
