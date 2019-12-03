#This is the color script we implement after a control and control group is created in our other script.

import maya.cmds as cmds

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