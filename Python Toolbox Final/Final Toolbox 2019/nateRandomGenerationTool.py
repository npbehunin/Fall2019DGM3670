#Generate x amount of objects at a position within a specified range.

import maya.cmds as cmds
import random

class randomGeneration():
    def __init__(self):
        self.amount = 0
        self.xRange = 0
        self.yRange = 0
        self.zRange = 0
        self.xSpawn = 0
        self.ySpawn = 0
        self.zSpawn = 0
        
    def randGenWindow(self):
        windowName = 'generateWindow'
        if cmds.window(windowName, exists=True):
            cmds.deleteUI(windowName)
        windowName = cmds.window(windowName, width=250, rtf=True)
        m_column = cmds.columnLayout(p=windowName, adj=True)
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Random Generation Tool')
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Spawn point')
        cmds.separator(p=m_column, h=5, style='none')
        cmds.textFieldGrp('xSpawnText', p=m_column, l='Position x: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.textFieldGrp('ySpawnText', p=m_column, l='Position y: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.textFieldGrp('zSpawnText', p=m_column, l='Position z: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Range')
        cmds.separator(p=m_column, h=5, style='none')
        cmds.textFieldGrp('xRangeText', p=m_column, l='Range x: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.textFieldGrp('yRangeText', p=m_column, l='Range y: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.textFieldGrp('zRangeText', p=m_column, l='Range z: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Amount')
        cmds.separator(p=m_column, h=5, style='none')
        cmds.textFieldGrp('amountText', p=m_column, l='Amount: ', tx=0, ad2=2, cw2=(75, 100))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.button(p=m_column, label='Generate!', h=50, c=lambda *args: self.generate())
        cmds.showWindow(windowName)
        
    def generate(self):
        sel = cmds.ls(sl=True)
        
        self.amount = int(cmds.textFieldGrp('amountText', q=True, tx=True))
        self.xRange = float(cmds.textFieldGrp('xRangeText', q=True, tx=True))
        self.yRange = float(cmds.textFieldGrp('yRangeText', q=True, tx=True))
        self.zRange = float(cmds.textFieldGrp('zRangeText', q=True, tx=True))
        self.xSpawn = float(cmds.textFieldGrp('xSpawnText', q=True, tx=True))
        self.ySpawn = float(cmds.textFieldGrp('ySpawnText', q=True, tx=True))
        self.zSpawn = float(cmds.textFieldGrp('zSpawnText', q=True, tx=True))
        
        i=0
        while i < abs(int(self.amount)):
            randX = random.uniform(-1*(self.xRange/2), (self.xRange/2))
            randY = random.uniform(-1*(self.yRange/2), (self.yRange/2))
            randZ = random.uniform(-1*(self.zRange/2), (self.zRange/2))
            obj = cmds.duplicate(sel)
            cmds.select(cl=True)
            cmds.select(obj)
            cmds.move(self.xSpawn, self.ySpawn, self.zSpawn)
            cmds.move(randX, randY, randZ, r=True, os=True)
            i += 1
            if i > 1000:
                break