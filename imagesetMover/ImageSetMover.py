import os
import glob
from pathlib import Path

def moveDirByCriteria(dirToChange,checkInsideThisDir,moveToThisDir):
    dirToChange = dirToChange.strip('\\') + '\\'
    checkInsideThisDir = checkInsideThisDir.strip('\\') + '\\'
    dirToCheck = glob.glob(dirToChange+'*')
    for dir in dirToCheck:
        dirpath = Path(dir)
        # import pdb;pdb.set_trace()
        filesContainsTheDirName = glob.glob(checkInsideThisDir+'*%s*' % dirpath.name)
        if filesContainsTheDirName == []:
            with open('fileTomove.txt','a+') as fp:
                fp.write(dir+'\n')
    moveByFastCopy('fileTomove.txt',moveToThisDir)
    

def moveByFastCopy(txtFileName,dstination):
    if not os.path.exists(txtFileName):
        return
    fastCopyLocation = 'C:\\app\\FastCopyPortable\\FastCopyPortable.exe'
    cmdTemplate = '''%0 /log /cmd="move" /auto_close /force_close /srcfile=%1 /to=%2 '''
    cmd = cmdTemplate.replace('%0',fastCopyLocation)
    cmd = cmd.replace('%1',txtFileName)
    cmd = cmd.replace('%2',dstination)
    print(cmd)
    os.system(cmd)
    
# splitTextFile('fs.txt',1000)
moveDirByCriteria('D:\\paradise\\stuff\\new\\imageset2','C:\\Games\\Sacred2','D:\\paradise\\stuff\\Scanned')
