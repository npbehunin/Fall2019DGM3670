#Calculator script reformatted for Python.

numbers = [7, 6, 1, 2, 8, 2, 2, 6, 2, 2, 5, 10, 6, 19]
test1 = [3, 4]
a = 0

def Calculate(keyword, num)
    #Addition
    if keyword == 'Add' or keyword == 'add':
        for i in num
            print(i)
            if a != len(num-1)
                print(' + ')
                a += 1
        print(' = ' + Add(num) + '\n')
        return Add(num)
    #Subtraction
    else if (keyword == 'Subtract' or keyword == 'subtract')
        for (i = 0 i < size(num) i++)
            print(num[i])
            if (i != size(num)-1)
                print(' - ')
        print(' = ' + Subtract(num) + '\n')
        return Subtract(num)
    #Multiplication
    else if (keyword == 'Multiply' or keyword == 'multiply')
        for (i = 0 i < size(num) i++)
            print(num[i])
            if (i != size(num)-1)
                print(' * ')
        print(' = ' + Multiply(num) + '\n')
        return Multiply(num)
    #Division
    else if (keyword == 'Divide' or keyword == 'divide')
        for (i = 0 i < size(num) i++)
            print(num[i])
            if (i != size(num)-1)
                print(' / ')
        print(' = ' + Divide(num) + '\n')
        return Divide(num)
    #Raise to power (NOTE: Takes only the first two numbers of the array.)
    else if (keyword == 'Raise To Power' or keyword == 'raise to power' or keyword == 'RaiseToPower' or keyword == 'raisetopower' or keyword == 'Raise' or keyword == 'raise' or keyword == 'Power' or keyword == 'power' or keyword == 'Exponent' or keyword == 'exponent' or keyword == 'Exponentiate' or keyword == 'exponentiate')
        for (i = 0 i < size(num) i++)
            print(num[i])
            if (i != size(num)-1)
                print(' to the power of ')
        print(' = ' + Power(num[0], num[1]) + '\n')
        return Power(num[0], num[1])
    #Mean
    else if (keyword == 'Mean' or keyword == 'mean')
        print('The mean of ')
        for (i = 0 i < size(num) i++)
            if (i != size(num)-1)
                print(num[i])
                print(', ')
            else
                print('and ')
                print(num[i])
        print(' is ' + Mean(num) + '.' + '\n')
        return Mean(num)
    #Median
    else if (keyword == 'Median' or keyword == 'median')
        print('The median of ')
        for (i = 0 i < size(num) i++)
            if (i != size(num)-1)
                print(num[i])
                print(', ')
            else
                print('and ')
                print(num[i])
        print(' is ' + Median(num) + '.' + '\n')
        return Median(num)
    #Mode
    else if (keyword == 'Mode' or keyword == 'mode')
        print('The mode of ')
        for (i = 0 i < size(num) i++)
            if (i != size(num)-1)
                print(num[i])
                print(', ')
            else
                print('and ')
                print(num[i])
        print(' is ' + Mode(num) + '.' + '\n')
        return Mode(num)
    else
        return 0
        print('No keyword recognized.')

#Add
def Add(float num)
    float value = num[0]
    for (i = 0 i < size(num) - 1 i++)
        value += num[i] + 1
    return value

#Subtract
def Subtract(float num)
    float value = num[0]
    for (i = 0 i < size(num) - 1 i++)
        value -= num[i] + 1
    return value

#Multiply
def Multiply(float num)
    float value = num[0]
    for (i = 0 i < size(num) - 1 i++)
        value *= num[i] + 1
    return value

#Divide
def Divide(float num)
    float value = num[0]
    for (i = 0 i < size(num) - 1 i++)
        value /= num[i] + 1
    return value

#Raise to the power of x.
def Power(float num, float power)
    float value = num
    for (i = 0 i < power - 1 i++)
        value *= num
    return value

#Find the mean
def Mean(float num)
    float value = 0
    for (i = 0 i < size(num) i++)
        value += num[i]
    return value / size(num)

#Find the median
def Median(float num)
    float arraySize = size(num)
    float medianNum = 0
    float difference = 0
    float halfwayPoint = arraySize/2
    int roundedPoint = `floor halfwayPoint`
    int secondPoint = 0

    ArrangeFloatArray(num)

    if (halfwayPoint != roundedPoint) 
        medianNum = num[roundedPoint]
    else #This means there are two median numbers to check.
        secondPoint = num[roundedPoint]
        medianNum = num[roundedPoint - 1]
        difference = secondPoint - medianNum
        
        if (difference != 0)
            difference /= 2
        medianNum += difference
    
    return medianNum

#Find the mode.
def Mode(float num)
    float previousNum = 0
    float currentNum = 0
    float highestValue = 1
    float modeNum = 0
    
    ArrangeFloatArray(num)
    
    for (i = 0 i < size(num) i++)
        if (num[i] == previousNum)
            highestValue++
        else
            highestValue = 1
        
        previousNum = num[i]
        
        if (currentNum < highestValue)
            currentNum = highestValue
            modeNum = num[i]
    return modeNum

#Reorder an array.
def ArrangeFloatArray(float num)
    for (i = 0 i < size(num) i++):
        if (!i == 0)
            if (num[i] < num[i-1])
                floatArrayInsertAtIndex(i - 1, num, num[i]) 
                floatArrayRemoveAtIndex(i + 1, num)
                if (i > 1)
                   i -= 2 
                else
                    i--
    return num

Calculate('add', numbers)