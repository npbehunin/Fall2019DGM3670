#Each "def" is a function we will call later.

import maya.cmds as cmds

class Toolbox():
    def __init__(self): #Kinda like the "Start" function in unity.
        self.window_name = 'clToolbox'
    
    def create(self):
        self.delete()
        
        self.window_name = cmds.window(self.window_name)
        self.m_column = cmds.columnLayout(p=self.window_name, adj=True)
        cmds.button(p=self.m_column, label='MyButton', c=lambda *args: cmds.polySphere(r=2))
        self.color = cmds.textField(p=self.m_column)
        cmds.button(p=self.m_column, label='Change Color', c=lambda *args: self.colorBtn())
        cmds.button(p=self.m_column, label='Select everything', c=lambda *args: self.selectBtn())
        cmds.button(p=self.m_column, label='Ball', c=lambda *args: self.ballBtn())
        
        cmds.showWindow(self.window_name)
        
    def delete(self):
        if cmds.window(self.window_name, exists=True):
            cmds.deleteUI(self.window_name)
            
    def ballBtn(self):
        import myTools #(For this assignment) place these scripts into maya's scripts folder.
        reload(myTools) #Refreshes the tools file if any changes are made.
        myTools.ball()
    
    def selectBtn(self):
        import myTools
        reload(myTools)
        myTools.select_all()
            
    def colorBtn(self):
        value = cmds.textField(self.color, q=True, tx=True)
        self.colorControl(value)
        cmds.textField(self.color, e=True, tx='')
            
    def colorControl(self, color):
        print('Color changed to %s' % color)
        if color == 'yellow':
            color = 17
        elif color == 'blue':
            color = 6
        else:
            color = 5
        
        sels = cmds.ls(sl=True)

        #Find the shape node in each selection.
        for sel in sels:
            shapes = cmds.listRelatives(sel, children=True, shapes=True)
    
            #Enable override for color.
            for shape in shapes:
                #cmds.setAttr(shape + '.overrideEnabled', True)
                cmds.setAttr('%s.overrideEnabled' % shape, True) #%s = "I'm gonna insert a string here."
                cmds.setAttr('%s.overrideColor' % shape, color) #6 is dark blue.


    
    