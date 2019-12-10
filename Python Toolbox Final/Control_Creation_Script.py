#Create a circle control nurb at each selection and match its orientation.
#Change the color of the object's attribute.

#To run the tool, type 'controlToolCreate().'

import maya.cmds as cmds

#Create a control at each selection. If nothing is selected, it creates a control at the origin.
def createControl():
    
    sels = cmds.ls(sl=True)
    
    if len(sels) > 0:
        for jointSel in sels:
        
            #Create a control at the object's translation.
            translation = cmds.xform(jointSel, q=True, ws=True, t=True) 
            if '_' in jointSel:
                name = jointSel.split('_')[0]
            else:
                name = jointSel
            control = cmds.circle(c=translation, n='%s_Ctrl' % name, nr=(0, 1, 0))
            cmds.select(control)
        
            #Create a group for the control, reset the pivots, and match the selection's rotation.
            controlGroup = cmds.Group(em=True, r=True)
            newGrp = cmds.rename(controlGroup, '%s_Ctrl_Grp' % name)
            cmds.xform(controlGroup, cp=True)
            cmds.xform(control, cp=True)
            cmds.matchTransform(newGrp, jointSel, rotation=True)
    else:
        control = cmds.circle(c=(0, 0, 0), n='New_Ctrl', nr=(0, 1, 0))
        controlGroup = cmds.Group(em=True, r=True)
        newGrp = cmds.rename(controlGroup, 'New_Ctrl_Grp')

#Changes the color of an iterable object.
def colorControl(color):

    print(color)
    sels = cmds.ls(sl=True)

    #Find the shape node in each selection.
    for sel in sels:
        shapes = cmds.listRelatives(sel, children=True, shapes=True)
        
        #Enable override for color.
        for shape in shapes:
            cmds.setAttr('%s.overrideEnabled' % shape, True)
            cmds.setAttr('%s.overrideColor' % shape, color)
            
#Create a window.
def controlToolCreate():
    windowName = 'CreateControlWindow'
    if cmds.window(windowName, exists=True):
        cmds.deleteUI(windowName)
    windowName = cmds.window(windowName, widthHeight=(100, 300))
    m_column = cmds.columnLayout(p=windowName, adj=True)
    cmds.button(p=m_column, label='Create Control at selection', c=lambda *args: createControl())
    cmds.separator(p=m_column, h=10, style='in')
    textTest = cmds.text(p=m_column, l='Selected color: %s ' % 'Light Gray')
    slider = cmds.intSliderGrp(p=m_column, l='Color: ', min=0, max=31, value=0, step=1, cc=lambda *args: changeSliderValue(textTest))
    cmds.separator(p=m_column, h=10, style='in')
    cmds.button(p=m_column, label='Change Color', c=lambda *args: colorControl(cmds.intSliderGrp(slider, q=True, value=True)))
    cmds.showWindow(windowName)
   
#Output a string based on the value of the slider. 
def changeSliderValue(textTest):
    value = cmds.intSlider('slider', q=True, value=True)
    print(value)
    if value == 0:
        color = 'Light Gray'
    elif value == 1:
        color = 'Black'
    elif value == 2:
        color = 'Dark Gray'
    elif value == 3:
        color = 'Light Gray'
    elif value == 4:
        color = 'Dark Red'
    elif value == 5:
        color = 'Dark Blue'
    elif value == 6:
        color = 'Blue'
    elif value == 7:
        color = 'Forest Green'
    elif value == 8:
        color = 'Dark Purple'
    elif value == 9:
        color = 'Pink'
    elif value == 10:
        color = 'Brown'
    elif value == 11:
        color = 'Dark Brown'
    elif value == 12:
        color = 'Burnt Red'
    elif value == 13:
        color = 'Red'
    elif value == 14:
        color = 'Green'
    elif value == 15:
        color = 'Ocean blue'
    elif value == 16:
        color = 'White'
    elif value == 17:
        color = 'Yellow'
    elif value == 18:
        color = 'Sky blue'
    elif value == 19:
        color = 'Light Green'
    elif value == 20:
        color = 'Salmon Pink'
    elif value == 21:
        color = 'Sand Brown'
    elif value == 22:
        color = 'Bright Yellow'
    elif value == 23:
        color = 'Grass Green'
    elif value == 24:
        color = 'Dirt Brown'
    elif value == 25:
        color = 'Faded Yellow'
    elif value == 26:
        color = 'Moss Green'
    elif value == 27:
        color = 'Blue-Green'
    elif value == 28:
        color = 'Faded Sky Blue'
    elif value == 29:
        color = 'Faded Blue'
    elif value == 30:
        color = 'Purple'
    elif value == 31:
        color = 'Red-Pink'
    else:
        color = 'Light Gray'
    test = cmds.text(textTest, e=True, l='Selected color: %s' % color)
    
controlToolCreate()