#Python doesn't need a ";" symbol at the end of each statement.
numInt = 3
print numInt

#Anything can be overwritten at anytime.
numInt = ['Hello', 'Hi', 'Greetings']
print numInt

#A list can contain multiple types of things
students = [['Bill', 'Bob', 'Candace', 'Rebecca'],
            [100, 98, 67, 37],
            ['Clayton', 'Marty', 'Clayton', 'Anthony']]
print students[0][3]

#A ":" symbol is used to indicate the start of a for loop.
for student in students:
    print student
    
#Instead of curly brackets, Python can recognize sections by how it's indented.
for i in range(len(students)):
    print students[i]
    print i
print "done"

#Nested for loop
for student in students:
    for s in student:
        print s, 'is great!'
        
#Print the name of each student and their associated score and favorite teacher.
for i in range(len(students[0])):
    print 'Name:', students[0][i]
    print 'Score:',students[1][i]
    print 'Teacher:', students[2][i]
    print '-------------------------------'
print 'Complete'
