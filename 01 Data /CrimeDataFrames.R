# import the 'Crime Types by County' data set
dft <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from TYPE_CRIMES_BY_COUNTY"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_eg22453', PASS='orcl_eg22453', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

# import the 'Sentences to Probation by Year' data set
dfs <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from SENTENCES_TO_PROBATION_BY_YEAR"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_eg22453', PASS='orcl_eg22453', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

# import the 'Adult arrests by County' data set
dfr <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from ADULT_ARRESTS_BY_COUNTY"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_eg22453', PASS='orcl_eg22453', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))


# remove invalid county data
dfr2 <- dfr %>% filter(COUNTY != "Unknown-NonNYS", COUNTY != "Unknown NYC county")

# remove misdemeanor data
dfs2 <- dfs %>% filter(CONVICTION == "Felony")