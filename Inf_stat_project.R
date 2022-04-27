names(gss)
summary(gss)

summary(gss$child)

ggplot(gss, aes(x = year, y = childs))+
  geom_smooth()

d <- gss %>% 
  select(year, childs)

d70 <- d %>% 
  filter(year == 1970, !is.na(childs))

d7010 <- d %>% 
  filter(year == 2010 & year == 1970, !is.na(childs))

summary(d7010$year)

states = read.csv("http://bit.ly/dasi_states")
povSlr <- lm(poverty ~ female_house, data = states)
summary (povMlr)
anova(povMlr)
povMlr <- lm(poverty ~ female_house + white, data = states)
summary(povMlr)
anova(povMlr)

sap_data = read.csv("Sap_data.csv")

