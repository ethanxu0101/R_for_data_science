# install.packages("tidyverse")
library(tidyverse)
# library(ggplot2)

mpg <- ggplot2::mpg

## "+" part adding different layers to the ggplot 
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
# ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_hex()
# ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_line()


# ggplot(data = mpg, aes(x=hwy, y=cyl)) + geom_point()

## not useful, each x has multiple y. 
# ggplot(data = mpg, aes(x=class, y=drv)) + geom_point()  
# 
