numbers = [7, 6, 1, 2, 8, 2, 2, 6, 2, 2, 5, 10, 6, 19]
test1 = [3, 4]
a = 0

def Calculate(keyword, num):
    #Addition
    if keyword == 'Add' or keyword == 'add':
        return Add(num)
    #Subtraction
    elif keyword == 'Subtract' or keyword == 'subtract'
        return Subtract(num)
    elif keyword == 'Multiply' or keyword == 'multiply'
        return Multiply(num)
    elif keyword == 'Divide' or keyword == 'divide'
        return Divide(num)
        
    #Add
    def Add(num):
        result = 0
        for i in num:
            result += i
        print(result)
        return result
    
    #Subtract
    def Subtract(num):
        result = 0
        for i in num:
            result -= i
        print(result)
        return result

    #Multiply
    def Multiply(num):
        result = 0
        for i in num:
            result *= i
        print(result)
        return result

    #Divide
    def Divide(num):
        result = 0
        for i in num:
            result /= i
        print(result)
        return result

Calculate('add', numbers)