#This is the color script we implement after a control and control group is created in our other script.

import maya.cmds as cmds

def createControl():
    
    sels = cmds.ls(sl=True)
    
    for jointSel in sels:
        
        #Create a control at the selection's translation.
        translation = cmds.xform(jointSel, q=True, ws=True, t=True) 
        control = cmds.circle(c=translation, n='%s_Ctrl' % jointSel, nr=(0, 1, 0))
        cmds.select(control)
        
        #Create a group for the control.
        controlGroup = cmds.Group(em=True, r=True)
        newGrp = cmds.rename(controlGroup, '%s_Ctrl_Group' % jointSel)
        
        #Reset the control's pivot.
        cmds.xform(controlGroup, cp=True)
        cmds.xform(control, cp=True)
        
        #Match the group's rotation to the selection.
        cmds.matchTransform(newGrp, jointSel, rotation=True)

def colorControl(color):
    
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
            
createControl()