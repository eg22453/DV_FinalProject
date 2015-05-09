# selects various crime related columns, groups them by year, and summarises their mean.
wr3 <- cleantbl %>% select(YEAR, DRUGS, DWI, PROPERTY,DRUG_FELONY,VIOLENT_FELONY,DWI_FELONY,DRUG_MISD,DWI_MISD,PROPERTY_MISD,VIOLENT_COUNT,PROPERTY_COUNT,FIREARM_COUNT) %>% group_by(YEAR) %>%
  summarise("Drug Probation"        =mean(DRUGS),
            "DWI Probation"         =mean(DWI),
            "Property Probation"    =mean(PROPERTY),
            "Drug Felonies"  		    =mean(DRUG_FELONY),
            "Violent Felonies"		  =mean(VIOLENT_FELONY),
            "DWI Felonies"		      =mean(DWI_FELONY),
            "Drug Misdemeanors"	    =mean(DRUG_MISD),
            "DWI Misdemeanors"		  =mean(DWI_MISD),
            "Property Misdemeanors"	=mean(PROPERTY_MISD),
            "Violent Crime Count"		=mean(VIOLENT_COUNT),
            "Property Crime Count"	=mean(PROPERTY_COUNT),
            "Firearm Crime Count"		=mean(FIREARM_COUNT)) %>% melt(., id.vars="YEAR",
                                                                  measure.vars=c("Drug Probation", "DWI Probation", "Property Probation", "Drug Felonies", "Violent Felonies", "DWI Felonies", "Drug Misdemeanors", "DWI Misdemeanors", "Property Misdemeanors", "Violent Crime Count", "Property Crime Count", "Firearm Crime Count"))