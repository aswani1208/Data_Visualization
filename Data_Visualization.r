### Visualize the datasets using Scatter plots 

### Install and load the required libraries

library(tidyverse)
library(repr)
library(viridis)
library(lubridate)
library(zoo)
library(kableExtra)

### Check the working directory

getwd()

### Read dataset 

plot1_df <- read_tsv("Lab1_scatterplot_set_1.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot1_df)


### Read dataset as table

kbl(plot1_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)

### Plot the data

### Update the aesthetics with axis and colour information

plot1_plot <- ggplot(plot1_df) +
  aes(x = x_values, y= y_values, colour = dataset) +
  geom_point() +
  theme(text = element_text(size = 20)) + #set text size
  guides(colour = guide_legend(title = "Set 1")) + #legend title
  xlab("x value") + #set the x-axis label
  ylab("y value") + #set the y-axis label
  xlim(0,100) + #Specify the min and max x axis and y axis
  ylim(0,100)

# Display plot
plot1_plot

# Save plot

ggsave(plot = plot1_plot, filename = "Set_1.png", scale=2,device = "png", units = c("cm"))


# Read Dataset2


plot2_df <- read_tsv("Lab1_scatterplot_set_2.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot2_df)

### Read dataset as table

kbl(plot2_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)

### Plot the data

### Update the aesthetics with axis and colour information

plot2_plot <- ggplot(plot2_df) +
  aes(x = x_values, y= y_values, colour = dataset) +
  geom_point() +
  theme(text = element_text(size = 20)) + #set text size
  guides(colour = guide_legend(title = "Set 2")) + #legend title
  xlab("x value") + #set the x-axis label
  ylab("y value") + #set the y-axis label
  xlim(0,100) + #Specify the min and max x axis and y axis
  ylim(0,100)

# Display plot

plot2_plot

# Save plot

ggsave(plot = plot2_plot, filename = "Set_2.png", scale=2,device = "png", units = c("cm"))


# Read Dataset3

plot3_df <- read_tsv("Lab1_scatterplot_set_3.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot3_df)

### Read dataset as table

kbl(plot3_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)

### Plot the data

### Update the aesthetics with axis and colour information

plot3_plot <- ggplot(plot3_df) +
  aes(x = x_values, y= y_values, colour = dataset) +
  scale_colour_brewer(palette ="Pastel2") + # USe color brewer palette
  geom_point() +
  theme(text = element_text(size = 20)) + #set text size
  theme_bw() +
  guides(colour = guide_legend(title = "Set 3")) + #legend title
  xlab("x value") + #set the x-axis label
  ylab("y value") + #set the y-axis label
  xlim(0,100) + #Specify the min and max x axis and y axis
  ylim(0,100)

# Display plot
plot3_plot

# Save plot

ggsave(plot = plot3_plot, filename = "Set_3.png", scale=2,device = "png", units = c("cm"))



# Read Dataset4

plot4_df <- read_tsv("Lab1_scatterplot_set_4.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot4_df)


### Read dataset as table

kbl(plot4_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)


### Plot the data

### Update the aesthetics with axis and colour information

plot4_plot <- ggplot(plot4_df) +
  aes(x = x_values, y= y_values, colour = dataset) +
  scale_colour_manual(values= c("blue1")) + #Manually set color
  geom_point() +
  theme(text = element_text(size = 20)) + #set text size
  theme_bw() +
  guides(colour = guide_legend(title = "Set 4")) + #legend title
  xlab("x value") + #set the x-axis label
  ylab("y value") + #set the y-axis label
  xlim(0,100) + #Specify the min and max x axis and y axis
  ylim(0,100)

# Display plot
plot4_plot

# Save plot

ggsave(plot = plot4_plot, filename = "Set_4.png", scale=2,device = "png", units = c("cm"))
