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
plot (nir, col=cl)#Exercise: change the colour gamut for all the images (another range of colours, not red, orange, yellow)

 

#Exercise: plot the NIR band (only the 4th one, like last time)

 

#dev.off() closes graphs

 

#Export graphs in R

pdf("myfirstgraph.pdf")

plot(l2011$B4_sre, col=cl)

dev.off()

 

#Plotting two bands in a multiframe

par(mfrow=c(2,1))

plot(l2011[[3]], col=cl)

plot(l2011[[4]], col=cl)

 

#Plotting the first four bands/layers in a multiframe

par(mfrow=c(2,2))

 

#blue

clb<-colorRampPalette(c("blue4", "blue2", "light blue"))(100)

plot(l2011[[1]], col=clb)

 

#green

clg<-colorRampPalette(c("chartreuse4", "chartreuse3", "chartreuse"))(100)

plot(l2011[[2]], col=clg)

 

#red

clr<-colorRampPalette(c("brown", "brown1", "darkred"))(100)

plot(l2011[[3]], col=clr)

 

#infrared

cln<-colorRampPalette(c("darkorcihd", "darkorchid3", "darkorchid4"))(100)

plot(l2011[[4]], col=cln)

 

#RGB plotting

plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")

plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")

plotRGB(l2011, r=3, g=4, b=2, stretch="Lin")

plotRGB(l2011, r=3, g=2, b=4, stretch="Lin")

 

#Multiframe with natural and false colours

par(mfrow=c(2,1))
plotRGB(l2011, r=3, g=2, b=1, stretch="Lin")
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")

 

#Histogram stretching

par(mfrow=c(2,1))

plotRGB(l2011, r=3, g=2, b=1, stretch="Hist")

plotRGB(l2011, r=4, g=3, b=2, stretch="Hist")

 

#Linear vs. Histogram stretching

par(mfrow=c(2,1))

plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")

plotRGB(l2011, r=4, g=3, b=2, stretch="Hist")

#exercise: import the 1988 image
brick("p224r63_1988_masked.grd")
l1988<-brick("p224r63_1988_masked.grd")


# exercise:plot in RGB (natural color)
plotRGB(r=2, g=3, B=4, stretch"Lin")


#exercise mulpiplot
par(mfrow=c(2,2))
plotRGB(l1988, r=4, g=3, b=2, stretch="Lin")
plotRGB(l2011, r=4, g=3, b=2, stretch="Lin")
plotRGB(l1988, r=4, g=3, b=2, stretch="Hist")
plotRGB(l2011, r=4, g=3, b=2, stretch="Hist")
