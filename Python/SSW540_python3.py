import math
#Letting the user choose the file name
fname = raw_input('Enter the file name: ') 

#We need to assume that the open call might fail and add recovery code when the open fails
try:    
    fhand = open(fname) #Open file
except:
    print 'File cannot be opened:', fname
    exit()  #The exit function terminates the program
count = 0 #Counting the number of lines
number = 0 #the number following the 'X-DSPAM-Confidence:'
for line in fhand:
    line = line.rstrip() #the rstrip method which strips whitespace from the right side of a string
    #read a file and only print out lines which started with the prefix 'X-DSPAM-Confidence:'
    if line.startswith('X-DSPAM-Confidence:') : 
        #compute the total of the spam sonfidence values from these lines
        number = number + float(line[19: ]) 
        count = count + 1   #count these lines
        
print 'Average spam confidence: ', number/count  #output result

#Xuanyu Liu-10366149
