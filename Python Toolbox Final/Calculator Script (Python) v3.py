#See v2 for a non class version of this script.

import maya.cmds as cmds

class calculator():
    def __init__(self):
        pass
        
    #Add
    def Add(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result += i
        print(result)
        return result
    
    #Subtract
    def Subtract(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result -= i
        print(result)
        return result

    #Multiply
    def Multiply(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result *= i
        print(result)
        return result

    #Divide
    def Divide(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result /= i
        print(result)
        return result
        
    #Raise to the power of x
    def Exponent(self, num):
        result = num[0]
        i = 1
        while i < num[1]:
            result *= num[0]
            i += 1
        print(result)
        return result
        
    #Find the mean
    def Mean(self, num):
        result = 0
        count = 0
        for i in num:
            count += 1
            result += i
        result = round(float(result)/float(count), 2)
        print(result)
        return result
        
    #Find the median
    def Median(self, num):
        num = self.Arrange(num)
        length = len(num)
        divFloat = round(float(length)/float(2), 2)
        divNormal = length/2
        print(divNormal)
        print(divFloat)
        
        if divFloat == divNormal: #The median is inbetween two numbers
            difference = float(num[divNormal] - num[divNormal - 1])
            print(difference)
            result = num[divNormal - 1] + round(difference/2, 2)
        else:
            result = num[divNormal]
        print(result)
        
    #Find the mode
    def Mode(self, num):
        num = self.Arrange(num)
        lastNum = 0
        currentCount = 0
        highestCount = 0
        
        for i in num:
            if currentCount == 0:
                currentCount = 1
            else:
                if i == lastNum: #Make sure this works correctly if the first number is 0.
                    currentCount += 1
                else:
                    currentCount = 1
                if highestCount < currentCount:
                    highestCount = currentCount
            
            lastNum = i
        print(highestCount)
        return highestCount      
        
    #Arrange a list of numbers
    def Arrange(self, num):
        i = 0
        for a in num:
            i = 0
            for b in num:
                if b <= a:
                    num.remove(a)
                    num.insert(i-1, a)
                i += 1
        print(num)
        return num
        
myCalc = calculator()
myCalc.Arrange([1, 9, 6.5, 5, 31, 9, 1, 9.75, 9, 1])