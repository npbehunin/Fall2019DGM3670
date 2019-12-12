#Each "def" is a function we will call later.

import maya.cmds as cmds

class NateToolbox():
    def __init__(self): #Kinda like the "Start" function in unity.
        self.window_name = 'clToolbox'
    
    def create(self):
        self.delete()
        
        self.window_name = cmds.window(self.window_name, width=250, rtf=True)
        self.m_column = cmds.columnLayout(p=self.window_name, adj=True)
        cmds.separator(p=self.m_column, h=10, style='in')
        cmds.text('titleText', p=self.m_column, l='Nate\'s Toolbox')
        cmds.separator(p=self.m_column, h=10, style='in')
        #cmds.button(p=self.m_column, label='MyButton', c=lambda *args: cmds.polySphere(r=2))
        #self.color = cmds.textField(p=self.m_column)
        cmds.button(p=self.m_column, label='Control/Coloration Tool', h=40, c=lambda *args: self.colorBtn())
        cmds.button(p=self.m_column, label='Calculator', h=40, c=lambda *args: self.calculatorBtn())
        cmds.button(p=self.m_column, label='Locator Tool', h=40, c=lambda *args: self.locatorBtn())
        cmds.button(p=self.m_column, label='Random Generation Tool', h=40, c=lambda *args: self.randGenBtn())
        cmds.button(p=self.m_column, label='Sequential Renamer Tool', h=40, c=lambda *args: self.renamerBtn())
        cmds.button(p=self.m_column, label='Select everything', h=40, c=lambda *args: self.selectBtn())
        #cmds.button(p=self.m_column, label='Ball', c=lambda *args: self.ballBtn())
        
        cmds.showWindow(self.window_name)
        
    def delete(self):
        if cmds.window(self.window_name, exists=True):
            cmds.deleteUI(self.window_name)
    
    def selectBtn(self):
        cmds.select(all=True)
        sels = cmds.ls(sl=True)
        return sels
            
    def colorBtn(self):
        import nateControlTool as ctrlTool
        reload(ctrlTool)
        ctrlTool.controlToolCreate()
        
    def calculatorBtn(self):
        import nateCalculatorTool
        reload(nateCalculatorTool)
        calc = nateCalculatorTool.calculator()
        calc.calculatorWindow()
        
    def locatorBtn(self):
        import nateLocatorTool
        reload(nateLocatorTool)
        loc = nateLocatorTool.locatorCreator()
        loc.locatorWindow()
        
    def randGenBtn(self):
        import nateRandomGenerationTool as genTool
        reload(genTool)
        gen = genTool.randomGeneration()
        gen.randGenWindow()
        
    def renamerBtn(self):
        import nateRenamerTool as nameTool
        reload(nameTool)
        renamer = nameTool.sequentialRenamer()
        renamer.createRenamerWindow()


    
    