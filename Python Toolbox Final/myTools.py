import maya.cmds as cmds

def select_all():
    cmds.select(all=True)
    sels = cmds.ls(sl=True)
    return sels
    
def ball():
    obj = cmds.polySphere(n='Ball_Geo')[0]
    