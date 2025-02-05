## ----setup, include=FALSE------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----Load required libraries, message=FALSE, warning=FALSE---------------------------------------------------------
library(tidyverse)
library(repr)
library(viridis)
library(lubridate)
library(zoo)
library(kableExtra)


## ----Get working directory-----------------------------------------------------------------------------------------
getwd()



## ----Dataset 1-----------------------------------------------------------------------------------------------------
plot1_df <- read_tsv("Lab1_scatterplot_set_1.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot1_df)



## ----Mean and standard deviation set1------------------------------------------------------------------------------
nrow(plot1_df)
ncol(plot1_df)
colnames(plot1_df)

avg_set1_Xval <- mean(plot1_df$x_values)
avg_set1_Yval <- mean(plot1_df$y_values)
stddev_set1_Xval <- sd(plot1_df$x_values)
stddev_set1_Yval <- sd(plot1_df$y_values)



## ----Read dataset1 as table----------------------------------------------------------------------------------------

kbl(plot1_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)



## ----plot dataset 1------------------------------------------------------------------------------------------------

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





## ----Dataset2------------------------------------------------------------------------------------------------------

plot2_df <- read_tsv("Lab1_scatterplot_set_2.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot2_df)



## ----Mean and standard deviation set2------------------------------------------------------------------------------
nrow(plot2_df)
ncol(plot2_df)
colnames(plot2_df)

avg_set2_Xval <- mean(plot2_df$x_values)
avg_set2_Yval <- mean(plot2_df$y_values)
stddev_set2_Xval <- sd(plot2_df$x_values)
stddev_set2_Yval <- sd(plot2_df$y_values)



## ----Read dataset2 as table----------------------------------------------------------------------------------------

kbl(plot2_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)



## ----Plot dataset 2------------------------------------------------------------------------------------------------

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




## ----Dataset 3-----------------------------------------------------------------------------------------------------

plot3_df <- read_tsv("Lab1_scatterplot_set_3.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot3_df)



## ----Mean and standard deviation set3------------------------------------------------------------------------------
nrow(plot3_df)
ncol(plot3_df)
colnames(plot3_df)

avg_set3_Xval <- mean(plot3_df$x_values)
avg_set3_Yval <- mean(plot3_df$y_values)
stddev_set3_Xval <- sd(plot3_df$x_values)
stddev_set3_Yval <- sd(plot3_df$y_values)



## ----Read dataset3 as table----------------------------------------------------------------------------------------

kbl(plot3_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)



## ----Plot dataset 3------------------------------------------------------------------------------------------------

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



## ----Dataset4------------------------------------------------------------------------------------------------------

plot4_df <- read_tsv("Lab1_scatterplot_set_4.txt",show_col_types = FALSE)

##### Take a look at the structure of the data

str(plot4_df)



## ----Mean and standard deviation set4------------------------------------------------------------------------------
nrow(plot4_df)
ncol(plot4_df)
colnames(plot4_df)

avg_set4_Xval <- mean(plot4_df$x_values)
avg_set4_Yval <- mean(plot4_df$y_values)
stddev_set4_Xval <- sd(plot4_df$x_values)
stddev_set4_Yval <- sd(plot4_df$y_values)



## ----Read dataset4 as table----------------------------------------------------------------------------------------

kbl(plot4_df[1:10,1:3]) %>%
  kable_paper(fixed_thead = T) %>%
  kable_styling(bootstrap_options = "striped", position = "left", full_width = F)



## ----Plot dataset 4------------------------------------------------------------------------------------------------

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



## ------------------------------------------------------------------------------------------------------------------

mean_stddev <- data.frame(
                    datasets = c("Set1","Set2","Set3","Set4"),
                    Average_X = c(avg_set1_Xval,avg_set2_Xval,avg_set3_Xval,avg_set4_Xval),
                    Average_Y = c(avg_set1_Yval,avg_set2_Yval,avg_set3_Yval,avg_set4_Yval),
                    StdDev_X = c(stddev_set1_Xval,stddev_set2_Xval,stddev_set3_Xval,stddev_set4_Xval),
                    StdDev_Y = c(stddev_set1_Yval,stddev_set2_Yval,stddev_set3_Yval,stddev_set4_Yval)

                    )

mean_stddev


