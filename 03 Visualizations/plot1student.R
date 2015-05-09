st1 %>% ggplot(aes(x=NO_OVERWEIGHT, y=NO_OBESE, color=GRADE_LEVEL)) + geom_point() + facet_wrap(~REGION) + stat_smooth(method="lm", se=FALSE) + labs(x="Number Overweight", y = "Number Obese")
