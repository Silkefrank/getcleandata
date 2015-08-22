features <- read.table("./features.txt", colClasses = "character")
features <- features$V2
activity <- read.table("./activity_labels.txt", colClasses = "character")

x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/X_test.txt")

subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")

y_train <- read.table("./train/Y_train.txt")
y_test <- read.table("./test/Y_test.txt")

comp_data <- cbind(rbind(subject_train,subject_test),rbind(y_train,y_test),rbind(x_train,x_test))
colnames(comp_data) <- c("subject", "activity", features)

comp_data <- comp_data[,c("subject","activity",colnames(comp_data)[grepl("mean\\(\\)", names(comp_data)) | grepl("std", names(comp_data))])]

comp_data <- merge(activity, comp_data, by.x = "V1", by.y = "activity")
colnames(comp_data)[2] <- "activity"
comp_data <- comp_data[,2:69]

library(dplyr)
sum_data <- comp_data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

