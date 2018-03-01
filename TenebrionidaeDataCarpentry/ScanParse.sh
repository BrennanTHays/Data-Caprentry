#!/bin/bash
#Plotting Scan Data GPS Coordinates on a Map
#Brennan Hays

#input file name
infile='occurrences.tab'
#lat long output file name
latlong='USATenebs.tsv'

#map file name pdf
mapfile='MapTeneb.pdf'

#Geographic constraint (State or County)

geoarea='USA' #potential grep curation with single quotes

#Taxonomic constraint (genus/species)

taxon='Tenebrionidae'


#Write Header to Output
echo "lat	long" > $latlong

#read the infile, find geoarea records -i (ignores case),
#find taxon records, isolate columns 64 and 65 (which are lat long in this case), print to outfile
#double carrot (>>) appends rather than overwrites
cat $infile | grep -i $geoarea | grep -i $taxon | cut -f64,65 >> $latlong 

#calls the program Rscript, executes r file
#feeding it the input file (lat long) and mapfile
Rscript ScanPlot.R $latlong $mapfile