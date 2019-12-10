#See v2 for a non class version of this script.

class calculator():
    def __init__(self):
        pass
        
    #Add
    def Add(self, num):
        result = 0
        for i in num:
            result += i
        print(result)
        return result
    
    #Subtract
    def Subtract(self, num):
        result = 0
        for i in num:
            result -= i
        print(result)
        return result

    #Multiply
    def Multiply(self, num):
        result = 0
        for i in num:
            result *= i
        print(result)
        return result

    #Divide
    def Divide(self, num):
        result = 0
        for i in num:
            result /= i
        print(result)
        return result
        
import calculator #This can be run just once
myCalc = calculator()
myCalc.Subtract([3, 6, 8])