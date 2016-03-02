#Xuanyu Liu
#a Python program to parse the XML and determine how many compact discs are stored in
# http://www.w3schools.com/xml/cd_catalog.xml (Links to an external site.) .
# Also determine how many of those discs include a reference to Pavarotti in their titles!
import urllib
import re
import string
fname = raw_input('Enter the website or input default website: "http://www.w3schools.com/xml/cd_catalog.xml": ')
try:#try to open the website
    fhand = urllib.urlopen(fname)
except:#if fail to open
    print 'File cannot be opened:', fname
    exit()

countsCD = 0 #set the initial value of the counts of CD
countsPavarptti = 0 #set the initial value of the counts of Pavarptti

for line in fhand:
    x=re.findall('<CD>',line) # the lines contain "<CD>"
    y=re.findall('<TITLE>Pavarotti', line)#the lines that start with "<TITLE> followed by Pavarotti
    if len(x) > 0:     #if the length of the line is bigger than zero,
        countsCD= countsCD + 1  #count the number of <CD>
    if len(y) > 0:
        countsPavarptti= countsPavarptti + 1
print "The number of compact discs is " + str(countsCD) #output
print "The number of CD's with Pavarotti in their titles is " + str(countsPavarptti) #output
