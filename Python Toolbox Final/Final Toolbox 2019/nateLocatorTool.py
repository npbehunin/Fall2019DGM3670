#Script that places a locator at the center of the currently selected objects.
#Can also optionally place a locator at the center of each selected object.

import maya.cmds as cmds

class locatorCreator():
    def __init__(self):
        self.matchOrientation = True
        
    #Create a window
    def locatorWindow(self):
        windowName = 'locWindow'
        if cmds.window(windowName, exists=True):
            cmds.deleteUI(windowName)
        windowName = cmds.window(windowName, widthHeight=(150, 300), rtf=True)
        m_column = cmds.columnLayout(p=windowName, adj=True)
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Locator creator tool')
        cmds.separator(p=m_column, h=10, style='in')
        cmds.button(p=m_column, label='Create locator at each selection', h=40, c=lambda *args: self.placeLocatorAtSel())
        cmds.separator(p=m_column, h=5, style='none')
        cmds.checkBox(p=m_column, v=1, l='Match orientation', onc=lambda *args: self.orientVal(True), ofc=lambda *args: self.orientVal(False))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.button(p=m_column, label='Create locator at center', h=40, c=lambda *args: self.placeLocatorAtCenter())
        cmds.separator(p=m_column, h=10, style='in')
        cmds.showWindow(windowName)
        
    #Place a locator at the center of all the selections.
    def placeLocatorAtCenter(self):
        sel = cmds.ls(sl=True)
        if len(sel) != 0:
            xPosList = []
            yPosList = []
            zPosList = []
            
            for i in sel:
                box = cmds.xform(i, q=True, bb=True, ws=True)
                xPosList.append((box[0]+box[3])/2)
                yPosList.append((box[1]+box[4])/2)
                zPosList.append((box[2]+box[5])/2)
            
            xHigh = self.getHighVal(xPosList)
            xLow = self.getLowVal(xPosList)
            yHigh = self.getHighVal(yPosList)
            yLow = self.getLowVal(yPosList)
            zHigh = self.getHighVal(zPosList)
            zLow = self.getLowVal(zPosList)
            
            xCenter = (xLow + xHigh)/2
            yCenter = (yLow + yHigh)/2
            zCenter = (zLow + zHigh)/2
            
            locator = cmds.spaceLocator(n='Center_locator', p=(xCenter, yCenter, zCenter))
            cmds.xform(locator, cp=True)

    #Place a locator at each individual selection.
    def placeLocatorAtSel(self):
        sel = cmds.ls(sl=True)
        xList = []
        yList = []
        zList = []
        
        for i in sel:
            box = cmds.xform(i, q=True, bb=True, ws=True)
            xPos = (box[0]+box[3])/2
            yPos = (box[1]+box[4])/2
            zPos = (box[2]+box[5])/2
            
            locator = cmds.spaceLocator(n='%s_locator' % i, p=(xPos, yPos, zPos))
            cmds.xform(locator, cp=True)
            
            if self.matchOrientation:
                cmds.matchTransform(locator, i, rotation=True)
                
    #Find the highest value in an array.
    def getHighVal(self, num):
        highNum = num[0]
        for i in num:
            if i > highNum:
                highNum = i
        return highNum
    
    #Find the lowest value in an array.
    def getLowVal(self, num):
        highNum = num[0]
        for i in num:
            if i < highNum:
                highNum = i
        return highNum
        
    #Update the orientation bool
    def orientVal(self, match):
        self.matchOrientation = match
   
#tool = locatorCreator()     
#tool.placeLocatorAtSel()