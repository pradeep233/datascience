pollutantmean<-function(directory, pollutant, id = 1:332)
{
        
        wd<-getwd()
        datamean<-numeric()
        allFiles<-matrix(NA,0,4)
        #directory<-"specdata"
        fulldir<-paste(getwd(),directory,sep="/")
        # print(fulldir)
        setwd(fulldir)
        lf<-list.files(fulldir)
        
        # pollutant<-"nitrate"
        # id<-1:2
        for(i in id)
        {
                lf[i]   
                singleFile<-read.csv(file=lf[i])
                # print(lf[i])
                allFiles <- rbind(allFiles, singleFile)
        }
        #data
        setwd(wd)
        datamean<-mean(allFiles[[pollutant]], na.rm = TRUE)
        return(datamean)
        
}
