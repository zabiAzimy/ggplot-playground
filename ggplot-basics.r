install.packages("tidyverse")
 library(tidyverse)
 data()
 ?BOD
 
 ggplot(data = BOD,
        mapping = aes(x = Time,
                      y = demand)) + 
     geom_point(size = 5) +
     geom_line(colour = "red")
 
 
ggplot(CO2)

# using pipe
CO2 %>% ggplot(aes(conc, uptake, 
                   colour = Treatment)) +
            geom_point(size = 4, alpha = 0.5) +
            geom_smooth(method = lm, se = F) +
            facet_wrap(~Type) +
            labs(title = "Concentration of co2") +
            theme_bw()


CO2 %>% ggplot(aes(Treatment, uptake)) +
    geom_boxplot() +
    geom_point(alpha = 0.5, aes(size = conc,
                   colour = Plant)) + 
    facet_wrap(~Type) + 
    coord_flip() + 
    theme_bw() +
    labs(title = "Chilled vs non-chilled")

mpg
view(mpg)

mpg %>%
    filter(cty < 25) %>% ggplot(aes(displ, cty)) +
    geom_point(aes(colour=drv,
                   size = trans,
                   alpha = 0.5)) +
    geom_smooth(method = lm) +
    facet_wrap(~year, nrow = 2) + 
    labs(x="Engine size",
         y="MPG in the city",
         title = "Fuel Efficiency") + 
        theme_bw()
    
    
    
# let's do another visualization 
USArrests %>% ggplot(aes(x = UrbanPop,
                         y = Rape)) + 
    geom_smooth(method = lm) +
    geom_point(size = 3,
               colour = "red",
               alpha = 0.5)
    
    
    
    
    
    
    



