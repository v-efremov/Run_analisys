# all the data directories should be located at the working directory.
#1
# reading and merging of everything about subjects
  stest<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  strain<-read.table("./UCI HAR Dataset/train/subject_train.txt")
  subjects<-rbind(stest,strain)
  rm(stest,strain)
# reading and merging of everything about activity
  ytest<-read.table("./UCI HAR Dataset/test/y_test.txt")
  ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt")
  activities<-rbind(ytest,ytrain)
  rm(ytest,ytrain)
# reading and merging of everything about measurements
  xtest<-read.table("./UCI HAR Dataset/test/X_test.txt")
  xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt")
  x<-rbind(xtest,xtrain)
  rm(xtest,xtrain)
# merging of everything
  alldata<-cbind(subjects,activities,x)
  rm(subjects,activities,x)
#2
# search for the columns of averages and standard deviations
  features<-read.table("./UCI HAR Dataset/features.txt")
  findings<-sapply(c("mean\\(\\)","std\\(\\)"),regexpr,text=as.character(features[,2]))>0
  findings<-apply(findings,1,any)
# selection of the found columns into the new dataset
  selecteddata<-alldata[,c(TRUE,TRUE,findings)]
#3
# labeling of the subjects and activity data as factors
  selecteddata[,1]<-factor(selecteddata[,1])
  labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
  selecteddata[,2]<-factor(selecteddata[,2],labels=labels[,2])
#4
# naming data
  names(selecteddata)<-c("subject","activity",as.character(features[findings,2]))
  rm(features,labels,findings)
#5
# ordering by activity first, then by subjects
  selecteddata<-selecteddata[order(selecteddata$activity,selecteddata$subject),]
# calculating averages for groups
  tidydata<-aggregate(selecteddata[,3:ncol(selecteddata)],by=selecteddata[,1:2],FUN=mean)
# saving result
  write.table(tidydata,"./tidydata.txt",row.name=FALSE)
