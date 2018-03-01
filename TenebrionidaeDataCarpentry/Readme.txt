#Brennan Hays - Mining SCAN Symbiota tab delimited files for GPS coordinates
#You will require Rstudio, bash, and a UNIX shell
#You will need to install rworldmap and ggplot2 for the R program. 
#You will need to download tab delimited files from Symbiota (http://scan-bugs.org/portal/index.php). 
#To download a tab file you can search whatever collection for whatever you want. In the top right corner showing the results there should be a little box like icon that takes you to the download portal. 

#Credit goes to the linked websites in the comments of the programs, along with a special thanks to Andrew Johnston and other students at the ASU Hasbrouck Insect Collection who helped with ideas and debugging.

#There seems to be some bug going on with the meta(?) for the .sh file - so use sh ScanParse.sh to run the program rather than ./ScanParse.sh

#All files needed will be: ScanParse.sh , ScanPlot.R , and your tab delimited occurence records. 

#Thanks!