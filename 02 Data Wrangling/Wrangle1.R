# filter out the top 50th percentile of the data with respect to DWI misdemeanors
wr1 <- cleantbl %>% mutate(misd_pct = cume_dist(DWI_MISD)) %>% filter(misd_pct <= 0.5)