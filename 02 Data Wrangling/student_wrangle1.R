st1 <- student_weight %>% mutate(ow_ob_pct = cume_dist(NO_OVERWEIGHT_OR_OBESE)) %>% filter(ow_ob_pct <= 0.9, GRADE_LEVEL != "DISTRICT TOTAL")

head(st1)