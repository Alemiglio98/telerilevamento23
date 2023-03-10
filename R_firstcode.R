# my first code in Git Hub
# Let's instal the raster package
instal.packages("raster")
library(raster)
#import data, setting the working directory
setwd("C:/lab/")
l2011<- brick("p224r63_2011_masked.grd")  
plot(l2011) # plot of data 
cl<-colorRampPalette(c("red","orange","yellow")) (100) #100 sono le sfumature
plot(l2011,col= cl)
#plotting one element 
plot(l2011[[4]], col=cl)

plot(l2011$B4_sre, col=cl)
nir<- l2011[[4]]      #assegno la banda ad un singolo oggetto (uguale per il dollaro)
plot (nir, col=cl)
