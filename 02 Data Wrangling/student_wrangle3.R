st3 <- student_weight %>% mutate(pct_cume_dist = cume_dist(PCT_OVERWEIGHT_OR_OBESE)) %>% filter(pct_cume_dist <= 0.9, REGION != "STATEWIDE (EXCLUDING NYC)", 
GRADE_LEVEL != "DISTRICT TOTAL") %>% group_by(CITY, REGION) %>% 
mutate(mean = mean(PCT_OVERWEIGHT_OR_OBESE))

head(st3)