st2 <- student_weight %>% mutate(ow_ob_pct = cume_dist(NO_OVERWEIGHT_OR_OBESE)) %>% filter(REGION != "STATEWIDE (EXCLUDING NYC)", GRADE_LEVEL != "DISTRICT TOTAL", ow_ob_pct <= 0.9)

head(st2)