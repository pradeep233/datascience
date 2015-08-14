corr <- function(directory, threshold = 0) {
        #------------------------------------------------------------------------------
        # Programe Name: corr
        # Description  : 
        #     function that takes a directory of data files and a threshold for complete
        #     cases and calculates the correlation between sulfate and nitrate for 
        #     monitor locations where the number of completely observed cases 
        #     (on all variables) is greater than the threshold
        #
        # Created By  : Pradeep Kothakota
        #------------------------------------------------------------------------------
        # Set the environment
        library("plyr")
        
        # Get the working directory and store the path
        OriginalWD <- getwd()
        
        # Set the working directory to the desination, specified to the function
        NewDirectory <- paste(OriginalWD, directory, sep="/")
        setwd(NewDirectory)
        
        
        # Get the list of files available
        fileListFull <- list.files(NewDirectory, full.names = TRUE)
        
        
        # Loop and get the complete record count
        OutPut<- vector(mode = "numeric", length = 0)
        
        for(fname in fileListFull){
                
                fd <- read.csv(fname,header=TRUE)
                x <- sum((!is.na(fd$sulfate)) & (!is.na(fd$nitrate)))
                
                if (x > threshold){
                        DSulphate <- fd[which(!is.na(fd$sulfate)), ]
                        DComplete <- DSulphate[which(!is.na(DSulphate$nitrate)), ]
                        OutPut <- c(OutPut, cor(DComplete$sulfate, DComplete$nitrate))
                }
        }
        
        # Re-Set it to original working directory
        setwd(OriginalWD)
        
        # Return value  
        OutPut
}
