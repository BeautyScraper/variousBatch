import os
import glob
from pathlib import Path
import argparse
import random


def dir_path(string):
    if os.path.isdir(string):
        return string
    else:
        try:
            _ = Path(string)
        except:
            raise NotADirectoryError(string)
    return string
parser = argparse.ArgumentParser()

parser.add_argument('--dirToSplit', type=dir_path)
parser.add_argument('--filesPerDie', type=int)
parser.add_argument('--DirName', type=ascii)
parser.add_argument('--rand', dest='rand', action='store_true')
parser.add_argument('--no-rand', dest='rand', action='store_false')
parser.set_defaults(rand=False)

args = parser.parse_args()

# breakpoint()
def splitTextFileIntoList(fileName,fSize=100):
    splitLines = []
    if type(fileName) == str:
        with open(fileName, 'r') as the_file:
            tfpi = 0
            allLines = the_file.readlines()
    else:
        allLines = fileName
    if args.rand:
        random.shuffle(allLines)
    for tfi in range(0,len(allLines),fSize):
        if tfi == 0:
            continue
        splitLines.append(allLines[tfpi:tfi])
        tfpi = tfi
    return splitLines


def splitTextFile(fileName,fSize=100,dstFileName='*'):
    # import pdb;pdb.set_trace()
    if dstFileName == '*':
        dstFileName = fileName.replace('.','p*.')
    splitFileNames = []
    for i,fileLines in enumerate(splitTextFileIntoList(fileName,fSize)):
        dstFName = dstFileName.replace('*',str(i+1))
        splitFileNames.append(dstFName)
        with open(dstFName,'w') as wfile:
            wfile.writelines(fileLines)
    return splitFileNames
            
def createFileList(dirPath,filelistName = 'fileList.txt'):
    dirPath = dirPath.strip('\\') + '\\*'
    t = [x+'\n' for x in glob.glob(dirPath)]
    
    with open(filelistName,'w') as wfile:
            wfile.writelines(t)
    return filelistName
    
def splitDir(dirPath,fsize=50,dstDirPat = '*'):
    dirPath = dirPath.strip('\\')
    if dstDirPat == '*':
        dstDirPat = dirPath+ '\\p*\\'
    filelistName = createFileList(dirPath)
    splitFileNames = splitTextFile(filelistName,fsize)
    for i,sFN in enumerate(splitFileNames):
        dpTargeDir = dstDirPat.replace("*",str(i+1))
        dpTargeDir = dpTargeDir.replace("\\\\",'\\').strip("'")
        moveByFastCopy(sFN,dpTargeDir)

def moveByFastCopy(txtFileName,dstination):
    fastCopyLocation = 'C:\\app\\FastCopyPortable\\FastCopyPortable.exe'
    cmdTemplate = '''%0 /log /cmd="move" /auto_close /force_close /srcfile=%1 /to=%2 '''
    cmd = cmdTemplate.replace('%0',fastCopyLocation)
    cmd = cmd.replace('%1',txtFileName)
    cmd = cmd.replace('%2',dstination)
    print(cmd)
    # import pdb;pdb.set_trace()
    os.system(cmd)
    
if __name__ == '__main__':
    # splitDir('C:\\Heaven\\YummyBaker',1000,'C:\\Heaven\\YummyBaker\\club*\\')
    splitDir(args.dirToSplit,args.filesPerDie,args.DirName)
