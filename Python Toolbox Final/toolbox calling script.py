#This is the script we run to access our toolbox script.
#Make sure each script file is located in documents > maya > scripts!

import NateToolbox

reload(NateToolbox)
myTB = NateToolbox.NateToolbox()
myTB.create()