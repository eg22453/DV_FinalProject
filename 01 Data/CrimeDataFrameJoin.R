# join the three tables on 'County' and 'Year'
temp <- full_join(dfs2, dfr2, by = c('COUNTY', 'YEAR'))
full <- full_join(temp, dft, by = c('COUNTY', 'YEAR'))

# remove stray NA's from data
cleantbl <- full[complete.cases(full),]

# convert columns with numbers to numeric data type
cleantbl[,4] <- as.numeric(as.character(cleantbl[,4]))
cleantbl[,5] <- as.numeric(as.character(cleantbl[,5]))
cleantbl[,6] <- as.numeric(as.character(cleantbl[,6]))
cleantbl[,7] <- as.numeric(as.character(cleantbl[,7]))
cleantbl[,8] <- as.numeric(as.character(cleantbl[,8]))
cleantbl[,9] <- as.numeric(as.character(cleantbl[,9]))
cleantbl[,10] <- as.numeric(as.character(cleantbl[,10]))
cleantbl[,11] <- as.numeric(as.character(cleantbl[,11]))
cleantbl[,12] <- as.numeric(as.character(cleantbl[,12]))
cleantbl[,13] <- as.numeric(as.character(cleantbl[,13]))
cleantbl[,14] <- as.numeric(as.character(cleantbl[,14]))
cleantbl[,15] <- as.numeric(as.character(cleantbl[,15]))
cleantbl[,16] <- as.numeric(as.character(cleantbl[,16]))
cleantbl[,17] <- as.numeric(as.character(cleantbl[,17]))
cleantbl[,18] <- as.numeric(as.character(cleantbl[,18]))
cleantbl[,19] <- as.numeric(as.character(cleantbl[,19]))
cleantbl[,20] <- as.numeric(as.character(cleantbl[,20]))
cleantbl[,21] <- as.numeric(as.character(cleantbl[,21]))
cleantbl[,22] <- as.numeric(as.character(cleantbl[,22]))
cleantbl[,23] <- as.numeric(as.character(cleantbl[,23]))
cleantbl[,24] <- as.numeric(as.character(cleantbl[,24]))
cleantbl[,25] <- as.numeric(as.character(cleantbl[,25]))
cleantbl[,26] <- as.numeric(as.character(cleantbl[,26]))
cleantbl[,27] <- as.numeric(as.character(cleantbl[,27]))
cleantbl[,28] <- as.numeric(as.character(cleantbl[,28]))
cleantbl[,29] <- as.numeric(as.character(cleantbl[,29]))

# remove any last NA's that may have ended up
cleantbl <- cleantbl[complete.cases(cleantbl),]

# display it
head(cleantbl)

# now do an inner join of the three tables following similar steps as above
inner_temp <- inner_join(dfs2, dfr2, by = c('COUNTY', 'YEAR'))
inner <- inner_join(inner_temp, dft, by = c('COUNTY', 'YEAR'))
cleaninner <- inner[complete.cases(inner),]
cleaninner[,4] <- as.numeric(as.character(cleaninner[,4]))
cleaninner[,5] <- as.numeric(as.character(cleaninner[,5]))
cleaninner[,6] <- as.numeric(as.character(cleaninner[,6]))
cleaninner[,7] <- as.numeric(as.character(cleaninner[,7]))
cleaninner[,8] <- as.numeric(as.character(cleaninner[,8]))
cleaninner[,9] <- as.numeric(as.character(cleaninner[,9]))
cleaninner[,10] <- as.numeric(as.character(cleaninner[,10]))
cleaninner[,11] <- as.numeric(as.character(cleaninner[,11]))
cleaninner[,12] <- as.numeric(as.character(cleaninner[,12]))
cleaninner[,13] <- as.numeric(as.character(cleaninner[,13]))
cleaninner[,14] <- as.numeric(as.character(cleaninner[,14]))
cleaninner[,15] <- as.numeric(as.character(cleaninner[,15]))
cleaninner[,16] <- as.numeric(as.character(cleaninner[,16]))
cleaninner[,17] <- as.numeric(as.character(cleaninner[,17]))
cleaninner[,18] <- as.numeric(as.character(cleaninner[,18]))
cleaninner[,19] <- as.numeric(as.character(cleaninner[,19]))
cleaninner[,20] <- as.numeric(as.character(cleaninner[,20]))
cleaninner[,21] <- as.numeric(as.character(cleaninner[,21]))
cleaninner[,22] <- as.numeric(as.character(cleaninner[,22]))
cleaninner[,23] <- as.numeric(as.character(cleaninner[,23]))
cleaninner[,24] <- as.numeric(as.character(cleaninner[,24]))
cleaninner[,25] <- as.numeric(as.character(cleaninner[,25]))
cleaninner[,26] <- as.numeric(as.character(cleaninner[,26]))
cleaninner[,27] <- as.numeric(as.character(cleaninner[,27]))
cleaninner[,28] <- as.numeric(as.character(cleaninner[,28]))
cleaninner[,29] <- as.numeric(as.character(cleaninner[,29]))
cleaninner <- inner[complete.cases(inner),]