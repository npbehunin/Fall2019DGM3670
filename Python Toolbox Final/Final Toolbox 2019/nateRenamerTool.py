#Sequential renaming script that replaces a specified symbol with a number.

import maya.cmds as cmds

class sequentialRenamer():
    def __init__(self):
        self.separatorSymbol = '_'
        self.numberSymbol = '#'
        self.startNumber = 1
        self.testSelection = ["Leg_##_Jnt", "Leg_##_Jnt", "Leg_a_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt", "Leg_##_Jnt"]
        
    def createRenamerWindow(self):
        windowName = 'renamerWindow'
        if cmds.window(windowName, exists=True):
            cmds.deleteUI(windowName)
        windowName = cmds.window(windowName, widthHeight=(100, 200), rtf=True)
        m_column = cmds.columnLayout(p=windowName, adj=True)
        cmds.separator(p=m_column, h=10, style='in')
        cmds.text(p=m_column, l='Sequential Renamer Tool')
        cmds.separator(p=m_column, h=10, style='in')
        cmds.textFieldGrp('separatorText', p=m_column, l='Separator: ', tx='_', ad2=2, cw2=(100, 100))
        cmds.textFieldGrp('symbolText', p=m_column, l='Symbol to replace: ', tx='x', ad2=2, cw2=(100, 100))
        cmds.textFieldGrp('numberText', p=m_column, l='Start number: ', tx='0', ad2=2, cw2=(100, 100))
        cmds.separator(p=m_column, h=10, style='in')
        cmds.separator(p=m_column, h=5, style='none')
        cmds.button(p=m_column, label='Rename selections!', h=50, c=lambda *args: self.updateParameters())
        cmds.showWindow(windowName)
        
    def updateParameters(self):
        self.separatorSymbol = cmds.textFieldGrp('separatorText', q=True, tx=True)
        self.numberSymbol = cmds.textFieldGrp('symbolText', q=True, tx=True)
        self.startNumber = int(cmds.textFieldGrp('numberText', q=True, tx=True))
        self.renameSelection()
        
    def renameSelection(self):
        sel = cmds.ls(sl=True)
        
        if len(sel) > 0:
            num=0
            for i in sel:
                if self.numberSymbol in i:
                    newString = ''
                    split = i.split(self.separatorSymbol)
                    count = len(split[1])
                    for char in split[1]: #For each '#' symbol...
                        if len(str(self.startNumber)) != len(split[1]):
                            if count > len(str(self.startNumber)):
                                newString = newString + '0'
                            elif count == len(str(self.startNumber)):
                                newString += str(self.startNumber)
                            count -= 1
                        else:
                            newString = str(self.startNumber)
                    self.startNumber += 1
                    newString = split[0] + '_' + newString + '_' + split[2]
                    print(newString)
                else:
                    print('No \"%r\" symbol in %s.' % (self.numberSymbol, i))
                cmds.rename(i, newString)