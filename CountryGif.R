# CREATING GIFS
library(ggplot2)     # Used for creating plots.
library(gganimate)   # Extends the ggplot2 package with the frame aesthetic.
library(tweenr)      # Makes the animation smooth.
library(magick)      # Takes a set of images and coverts them into a .gif format.
library(gifski)
library(dplyr)
library(magrittr)
library(countrycode)
library(grid)
#devtools::install_github("ellisp/ggflags")
#library(ggflags)

# DATA
COUNTRIES <- read.csv("COUNTRIES.csv")
D <- COUNTRIES %>%
    group_by(Year) %>%
    filter() %>%
    top_n(n = 25, wt = Total) %>%
    mutate(Rank = Rank * 120) %>%
    ungroup()
D <- D[with(D, order(Year, -Total)),]

D$Code <- tolower(countrycode(D$Country, "country.name", "iso2c"))


# PLOT
p <- ggplot(D) + #, aes(x = Rank, group = Country, country = as.factor(Code)
        geom_col(aes(x = Rank, y = Total), width = 100, fill = "azure3", color = "black") + # Columns
        coord_flip(clip = "off", expand = FALSE) + # Flip
        labs(title='{closest_state}', x = "", y = "Value (£ million)") + # Labels
        theme_minimal() + # Theme
        geom_text(aes(x = Rank, y = -600, label = Country), hjust = 1) + # Names
        geom_text(aes(x = Rank, y = Total + 200, label = as.character(Total)), hjust = 0, color = "black") + # Values  
        #geom_flag(aes(x = Rank, y = -300,  country = Code), size = 10) + # Flags
        scale_y_continuous(labels = scales::comma) + # Format y-axis values
        scale_x_reverse() + # Highest values on top
        transition_states(Year, transition_length = 4, state_length = 1) + # Animate
        theme(
            plot.title = element_text(hjust = 0, size = 20),
            plot.margin = margin(0,2,0,3,"cm"),
            axis.text.y  = element_blank()
        )
p

# ANIMATION
animate(p, fps = 30, duration = 30, width = 800, height = 600)

