#!/usr/bin/Rscript
#first argument is input lat long text file
#second argument is output mapfile

#args is creating a list of the arguments fed from terminal (lat long file, pdf output)
args<-commandArgs(trailingOnly=TRUE)
#read tsv file: https://stackoverflow.com/questions/33322248/how-to-import-tsv-file-in-r

#created variable (which is a talbe), and then fed that args[1] (latlong), sep means what's the seperator (tab delimited)
#header = true (ya gave it header)
scancoords<-read.table(file = args[1], sep = '\t', header = TRUE)

library(rworldmap) #Will need to install. May also need ggplot2, but that seems to install automatically with rworldmap

#map coordinates: http://www.milanor.net/blog/maps-in-r-plotting-data-points-on-a-map/
#map <- getMap(location = 'UnitedStates', zoom = 3) #create a map of the location to plot your GPS points on saved to map
#plot(map) #plot the location given in map
newmap<-getMap(resolution="low") #setting map resolution to low
#pdf tells r to write to a PDF rather than the screen, telling it to use args[2] to create the filename
pdf(file=args[2])
plot(newmap, xlim=c(-120,-90), ylim=c(20,50)) #create a new map - x and y limits show North America
#plot points read from scancoords variable (you MUST do long before lat...x then y)
points(scancoords$long,scancoords$lat, col="red",cex=.6)

#printing to a device pdf, this closes the file
dev.off()
#Just a reminder that whoever is reading this is a pretty cool person.
