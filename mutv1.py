from pathlib import Path
import sys
import pandas as pd
from random import shuffle
import random
import numpy as np
import os
import re

def listToFile(l,filename='D:\\ListFile.txt'):
    k = [x.strip('\n')+'\n' for x in l]
    k = list(set(k))
    with open(filename,'w') as fp:
        fp.writelines(k)

def inputWithinTime(inputString='',timelimit=10):
    import time
    print(inputString)
    for i in range(timelimit):
        time.sleep(1)
        print(i+1)
        
def moveByFastCopy(txtFileName,dstination):
    fastCopyLocation = 'C:\\app\\FastCopyPortable\\FastCopyPortable.exe'
    cmdTemplate = '''%0 /log /cmd="move" /auto_close /force_close /srcfile=%1 /to=%2 '''
    cmd = cmdTemplate.replace('%0',fastCopyLocation)
    cmd = cmd.replace('%1',txtFileName)
    cmd = cmd.replace('%2',dstination)
    print(cmd)
    # import pdb;pdb.set_trace()
    os.system(cmd)

def fileListCopy(fileList,dstination):
    tempFileName = str(hash(tuple(fileList)))+'.txt'
    listToFile(fileList,tempFileName)
    moveByFastCopy(tempFileName,dstination)
    Path(tempFileName).unlink()

def frad(ext='*.mkv'):#fileRenameAccordingToDir 
    validFiles = Path.cwd().rglob(ext)
    for vf in validFiles:
        # import pdb;pdb.set_trace()
        fn = re.search('^(\d+)$',vf.stem)
        
        if fn:
            nfn = vf.parent.stem + '-' + fn[0] + vf.suffix
            vf.rename(nfn)
        elif len(vf.stem) < 8:
            nfn = vf.parent.stem + vf.stem + vf.suffix
            print(nfn)
            vf.rename(nfn)
            
            # fn[0]