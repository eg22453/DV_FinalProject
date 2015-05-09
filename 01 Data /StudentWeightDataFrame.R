# import the 'Student Weight' data set
student_weight <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from weight3"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_bd8739', PASS='orcl_bd8739', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

# convert columns with numbers to numeric data type
student_weight[,1] <- as.numeric(as.character(student_weight[,1]))
student_weight[,6] <- as.numeric(as.character(student_weight[,6]))
student_weight[,7] <- as.numeric(as.character(student_weight[,7]))
student_weight[,8] <- as.numeric(as.character(student_weight[,8]))
student_weight[,9] <- as.numeric(as.character(student_weight[,9]))
student_weight[,10] <- as.numeric(as.character(student_weight[,10]))
student_weight[,11] <- as.numeric(as.character(student_weight[,11]))
student_weight[,17] <- as.numeric(as.character(student_weight[,17]))
student_weight[,18] <- as.numeric(as.character(student_weight[,18]))
student_weight[,19] <- as.numeric(as.character(student_weight[,19]))