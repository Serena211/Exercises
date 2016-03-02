# coding=utf-8
# Xuanyu Liu 10396149
# The function of this programming:
# This program counts the distribution of the hour of the day for each of the messages.
# You can pull the hour from the “From” line by finding the time string and then splitting 
# that string into parts using the colon character. Once you have accumulated the counts for 
# each hour, print out the counts, one per line, sorted by hour as shown below.

fname = raw_input('Enter the file name: ')
fhand = open(fname)# Input the document
cnts = dict()#Define the counts to count the number
t = list()#Define a list
l = list() # Sorting

for line in fhand:# Use "for" to find the line of the hour from the “From” line
    if line.startswith('From '):
        words = line.split()#Split the sentence
        x = words[5] # Store the time we need
        t.append(x[0:2]) # add the time to the end of the list we defined before
for time in t:
    if time not in cnts:# Counts the appearing numbers
        cnts[time] = 1                                           
    else:
        cnts[time] = cnts[time] + 1

for key, value in cnts.items():#Insert the items of the dic into the list
    l.append((key, value))

l.sort(reverse=False)

for key, value in l:# Output the result
    print key, value
