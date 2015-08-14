complete <- function(directory, id = 1:332) {

        wd<-getwd()
        datamean<-numeric()
        allFiles<-matrix(NA,0,4)
        #directory<-"specdata"
        fulldir<-paste(getwd(),directory,sep="/")
        # print(fulldir)
        setwd(fulldir)
        lf<-list.files(fulldir)
    

        result <- matrix(NA,0,2)
        for (i in id) {
                data <- read.csv(file=lf[i])
                no_na <- !is.na(data)
                compcase <- c(i, nrow(data[no_na[,1]&no_na[,2]&no_na[,3]&no_na[,4],]))
                result <- rbind(result, compcase)
        }
        colnames(result)=c("id", "nobs")
        rownames(result)<-NULL
        setwd(wd)
        result <- as.data.frame(result)
        return(result)
}


