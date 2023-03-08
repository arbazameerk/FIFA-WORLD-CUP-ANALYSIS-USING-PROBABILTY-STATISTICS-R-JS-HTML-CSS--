#this library will help in the animation of the graphs
#install.packages("gganimate")
#this library will help convert graphs to embedded html
#install.packages("htmlwidgets")

library(htmlwidgets) #--> convert the graph into a html page
library(gganimate) # --> to animate the graphs
library(ggplot2)
library(dplyr)
library(gapminder)
library(ggthemes)
library(tidyr)
library(lubridate)
library(gifski)
library(av)
library(esquisse)

#average age of players
ggplot(avgPlayer_Data) +
 aes(x = Country, fill = Country, weight = AverageAge) +
 geom_bar() +
 scale_fill_viridis_d(option = "magma", 
 direction = 1) +
 labs(x = "Country", y = "Average Age", title = "Average age of players regarding their country") +
 theme_light()

#market value graph
ggplot(marketValue_Data) +
 aes(x = Name, y = `Value (Million in Euros)`, fill = Name) +
 geom_col() +
 scale_fill_hue(direction = 1) +
 labs(x = "Countries") +
 theme_gray()

#most appear graph
ggplot(MostAppear_Data) +
 aes(x = Player, y = Appearances, fill = Player) +
 geom_col() +
 scale_fill_hue(direction = 1) +
 labs(x = "Player Name", y = "Num# of Appearences ") +
 ggthemes::theme_tufte()

#win percentage
ggplot(winPercent_Data) +
 aes(x = Country, y = `%in wining`) +
 geom_col(fill = "#112446") +
 theme_gray()

#most titles 
ggplot(mostTitles_Data) +
 aes(x = Country, y = `No# of titles Won`) +
 geom_col(fill = "#112446") +
 theme_gray()

#num of goals
Prob_Data %>%
 filter(Year >= 2018L & Year <= 2018L) %>%
 ggplot() +
 aes(x = HomeTeam, y = TotalGoals, fill = HomeTeam) +
 geom_col() +
 scale_fill_manual(values = c(Algeria = "#F8766D", 
Angola = "#F47862", Argentina = "#F07B57", Australia = "#ED7E4C", Austria = "#E98141", Belgium = "#E58337", 
Bolivia = "#E2862C", `Bosnia and Herzegovina` = "#DE8921", Brazil = "#DA8C16", Bulgaria = "#D78E0C", 
Cameroon = "#D39101", Canada = "#CD9400", Chile = "#C79600", China = "#C09800", Colombia = "#BA9B00", 
`Costa Rica` = "#B49D00", Croatia = "#AD9F00", Cuba = "#A7A200", `Czech Republic` = "#A1A400", Czechoslovakia = "#9AA700", 
Denmark = "#94A900", `East Germany` = "#88AB04", Ecuador = "#79AC09", Egypt = "#6BAE0F", England = "#5CAF14", 
`FR Yugoslavia` = "#4EB11A", France = "#3FB31F", Germany = "#31B425", Ghana = "#22B62A", Greece = "#13B730", 
Haiti = "#05B935", Honduras = "#00BA3E", Hungary = "#00BB48", Iceland = "#00BB52", Iran = "#00BC5C", 
Iraq = "#00BD67", Israel = "#00BD71", Italy = "#00BE7B", `Ivory Coast` = "#00BF85", Jamaica = "#00BF8F", 
Japan = "#00C099", Mexico = "#00C0A2", Morocco = "#00BFA9", Netherlands = "#00BFAF", `New Zealand` = "#00BEB6", 
Nigeria = "#00BDBD", `North Korea` = "#00BCC3", `Northern Ireland` = "#00BBCA", Norway = "#00BBD1", Panama = "#00BAD8", 
Paraguay = "#00B9DE", Peru = "#03B7E4", Poland = "#0DB5E6", Portugal = "#16B2E9", `Republic of Ireland` = "#20AFEC", 
Romania = "#29ACEF", Russia = "#33A9F1", `Saudi Arabia` = "#3DA6F4", Scotland = "#46A3F7", Senegal = "#50A1FA", 
Serbia = "#599EFC", `Serbia and Montenegro` = "#649AFE", Slovakia = "#7096FE", Slovenia = "#7C92FE", 
`South Africa` = "#888EFD", `South Korea` = "#948AFD", `Soviet Union` = "#A086FC", Spain = "#AC82FC", 
Sweden = "#B87DFC", Switzerland = "#C479FB", Togo = "#D075FB", `Trinidad and Tobago` = "#DB71FA", Tunisia = "#DE70F4", 
Turkey = "#E26EEF", Ukraine = "#E66CE9", `United Arab Emirates` = "#E96BE4", `United States` = "#ED69DE", 
Uruguay = "#F067D9", Wales = "#F466D3", `West Germany` = "#F764CE", Yugoslavia = "#FB62C8", Zaire = "#FF61C3"
)) +
 labs(x = "Countries") +
 theme_minimal()



