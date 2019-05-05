
# header names for both training and test data sets
features <- read.table('features.txt')

# create data.frame from training data set
train_main <- read.table('train/X_train.txt', col.names = features[,2])
train_mean_std <- grep('mean\\.\\.\\.|mean\\.\\.|std\\.\\.\\.|std\\.\\.', 
                 names(train_main))
train_select <- train_main[,train_mean_std]
train_select['activity_code'] <- read.table('train/y_train.txt')
train_select['subject'] <- read.table('train/subject_train.txt')

# create data.frame from test data set
test_main <- read.table('test/X_test.txt', col.names = features[,2])
test_mean_std <- grep('mean\\.\\.\\.|mean\\.\\.|std\\.\\.\\.|std\\.\\.', 
                       names(test_main))
test_select <- test_main[,test_mean_std]
test_select['activity_code'] <- read.table('test/y_test.txt')
test_select['subject'] <- read.table('test/subject_test.txt')

# merge training and test data sets
master <- rbind(train_select, test_select)

# summarize data by subject*activity
grouped <- split(master, interaction(master$subject, master$activity_code))
master_grouped <- t(sapply(grouped, function(x) colMeans(x)))
master_final <- data.frame(master_grouped)

# use activity_labels.txt to describe activity_code
activity_labels <- read.table('activity_labels.txt', col.names = 
                                c('activity_code', 'activity'))
master_final['activity'] <- sapply(master_final$activity_code, 
                             function(x) activity_labels[x,'activity'])
master_final$activity_code <- NULL
write.table(master_final, file = 'clean.txt')
