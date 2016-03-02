/*
Now we start programming.  We urge you to go through the Python \
for Informatics chapters or videos with some care and do all of\
the exercises, including those for which video walk-through's exist.  \
Please progress through Chapters 2 thru 4 for this assignment and \
submit a program (file of code with the .py extension) that successfully \
implements exercise 4.5 (which builds on the successful implementation of exercise 3.3).

Please note:  If you are using Version 0.0.8-d3 of the Python for \
Informatics, you will need to do exercise 4.7.  If you are using \
Version 0.0.9 it is exercise 4.5.

Double check that you are doing the question that begins as follows:

Rewrite the grade program from the previous chapter using a function \
called computegrade that takes a score as its parameter and returns \
a grade as a string. 
*/
# WEEK 3 Python Ex4.7
def computegrade(input):
    if input > 1.0 or input < 0:
        return 'Bad score'
    else:
     if input > 0.9:
      return 'A'
     elif input > 0.8:
      return 'B'
     elif input > 0.7:
      return 'C'
     elif input > 0.6:
      return 'D'
     elif input <= 0.6:
      return 'F'
     
while True:
 input=raw_input('Please enter score(If you want to quit, pleas enter break): ')
 if input== 'break':
  break     
 try:
    print computegrade(float(input))
 except:
    print 'Bad score'
