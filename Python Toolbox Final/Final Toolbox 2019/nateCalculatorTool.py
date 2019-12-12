#See v2 for a non class version of this script.

import maya.cmds as cmds

class calculator():
    def __init__(self):
        self.numList = []
        
    #Create calulator UI window.
    def calculatorWindow(self):
        numList = []
        windowName = 'calculatorWindow'
        if cmds.window(windowName, exists=True):
            cmds.deleteUI(windowName)
        windowName = cmds.window(windowName, widthHeight=(150, 300), rtf=True)
        m_column = cmds.columnLayout(p=windowName, adj=True)
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Calculator Tool')
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Enter a number to add it to the array:')
        cmds.separator(p=m_column, h=5, style='none')
        cmds.textField('entry', p=m_column)
        cmds.button(p=m_column, label='Add to number array', c=lambda *args: self.AppendToArray(numList))
        #cmds.button(p=m_column, label='Create Control at selection', c=lambda *args: createControl())
        cmds.separator(p=m_column, h=5, style='none')
        cmds.text('array', p=m_column, l='Current array: Nothing')
        cmds.separator(p=m_column, h=10, style='in')
        cmds.button(p=m_column, label='Add', h=35, c=lambda *args: self.Add(self.numList))
        cmds.button(p=m_column, label='Subtract', h=35, c=lambda *args: self.Subtract(self.numList))
        cmds.button(p=m_column, label='Multiply', h=35, c=lambda *args: self.Multiply(self.numList))
        cmds.button(p=m_column, label='Divide', h=35, c=lambda *args: self.Divide(self.numList))
        cmds.button(p=m_column, label='Exponent (First two numbers)', h=35, c=lambda *args: self.Exponent(self.numList))
        cmds.button(p=m_column, label='Mean', h=35, c=lambda *args: self.Mean(self.numList))
        cmds.button(p=m_column, label='Median', h=35, c=lambda *args: self.Median(self.numList))
        cmds.button(p=m_column, label='Mode', h=35, c=lambda *args: self.Mode(self.numList))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text('resultText', p=m_column, l='Result:')
        
        cmds.showWindow(windowName)
    
    #Add
    def Add(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result = round(result + i, 3)
        print(result)
        self.UpdateResult(result)
        return result
    
    #Subtract
    def Subtract(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result = round(result - i, 2)
        self.UpdateResult(result)
        return result

    #Multiply
    def Multiply(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result = round(result * i, 2)
        self.UpdateResult(result)
        return result

    #Divide
    def Divide(self, num):
        result = num[0]
        for i in num:
            if i != num[0]:
                result = round(result / i, 2)
        self.UpdateResult(result)
        return result
        
    #Multiply the first number by the exponent of the second number
    def Exponent(self, num):
        result = num[0]
        i = 1
        while i < num[1]:
            result = round(result * num[0], 2)
            i += 1
        self.UpdateResult(result)
        return result
        
    #Find the mean
    def Mean(self, num):
        result = 0
        count = 0
        for i in num:
            count += 1
            result += i
        result = round(float(result)/float(count), 2)
        self.UpdateResult(result)
        return result
        
    #Find the median
    def Median(self, num):
        num = self.Arrange(num)
        length = len(num)
        divFloat = round(float(length)/float(2), 2)
        divNormal = length/2
        
        if divFloat == divNormal:
            difference = float(num[divNormal] - num[divNormal - 1])
            result = num[divNormal - 1] + round(difference/2, 2)
        else:
            result = num[divNormal]
        self.UpdateResult(result)
        return result
        
    #Find the mode
    def Mode(self, num):
        num = self.Arrange(num)
        lastNum = 0
        currentCount = 0
        highestCount = 0
        mode = []
        
        for i in num:
            if currentCount == 0:
                currentCount = 1
            else:
                if i == lastNum:
                    currentCount += 1
                else:
                    currentCount = 1
                if highestCount < currentCount:
                    highestCount = currentCount
                    mode = []
                    if i not in mode:
                        mode.append(i)
                elif highestCount == currentCount:
                    if i not in mode:
                        mode.append(i)
            
            lastNum = i
        if highestCount != 1:
            self.UpdateResult(mode)
            return mode    
        else:
            self.UpdateResult('No mode found.')
            return 0
        
    #Arrange a list of numbers
    def Arrange(self, num):
        i = 0
        max = 0
        while i < len(num):
            if i != len(num)-1:
                if num[i] > num[i+1]:
                    num.append(num[i])
                    num.remove(num[i])
                    i = -1 
            i += 1
        self.UpdateResult(num)
        return num
        
    #Add numbers from the text field into an array
    def AppendToArray(self, numList):
        num = cmds.textField('entry', q=True, tx=True)
        num = float(num)
        self.numList.append(num)
        arrayText = cmds.text('array', e=True, l='Current array: %s' % self.numList)
        print(self.numList)
        
    #Print and update the result
    def UpdateResult(self, num):
        resultText = cmds.text('resultText', e=True, l='Result: %s' % num)
        print('Result: %s' % num)