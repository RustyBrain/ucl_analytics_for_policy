library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# Ex 1 -
ggplot(data = mpg)

# Ex 2 - 
dim(mpg)

# Ex 3 -
?mpg
# ^ How many wheel drive the vehicle is

# Ex 4 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy))

# Ex 5 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))
# ^ Nope. Can only see the points at which 2 categorical variables intersect - not even how many of each there are. 

# Ex 6 - I dont know what code you are refering to?
# Ex 7 -  model, trans, drv, fl, class
# Ex 8 - 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, color = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = class, colour = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, size = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = class, size = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, shape = class))
ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = class, shape = cty))
# ^This throws an error - cannot assign continous variable to shape

# Ex 9 -
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, shape = class, colour = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = class, size = cty, colour = cty))

# Ex 10 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, stroke = hwy * 0.01))
# ^ Makes it huge unless you make it smaller

# Ex 11 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = cty, colour = displ < 5))
# ^ Removes under 5 from being plotted

# Ex 12 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(hwy ~ cty)
# ^ fugly

# Ex 13 - 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
# Empty gris mean there are no data that fit into those categories

# Ex 14 -
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)
# ^ do not include another variable - in this case only facet on drv

# Ex 15 - Offical docs recommend geom_line(), geom_step(), or geom_path()

# Ex 16 - Expecting lines and points with displ on x, hwy on y, coloured by drv without standard error bars
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

# Ex 17 - They will look the same as it is the same data being plotted in the same way

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()
ggplot() +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# Ex 18 - 

ggplot() +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv), se = FALSE)

ggplot(data = mpg) +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv), se = FALSE)

ggplot(data = mpg) +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy), se = FALSE)

ggplot(data = mpg) +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy, colour = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv), se = FALSE)

ggplot(data = mpg) +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy, fill = drv), shape = 21, colour = 'white')
  