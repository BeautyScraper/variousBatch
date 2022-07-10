import os
import glob
import argparse

def splitTextFileIntoList(fileName,fSize=100):
    splitLines = []
    if type(fileName) == str:
        with open(fileName, 'r') as the_file:
            tfpi = 0
            allLines = the_file.readlines()
    else:
        allLines = fileName
    for tfi in range(0,len(allLines),fSize):
        if tfi == 0:
            continue
        splitLines.append(allLines[tfpi:tfi])
        tfpi = tfi
    return splitLines


def splitTextFile(fileName,fSize=100,dstFileName='*'):
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
        moveByFastCopy(sFN,dpTargeDir)

def moveByFastCopy(txtFileName,dstination):
    fastCopyLocation = 'C:\\app\\FastCopyPortable\\FastCopyPortable.exe'
    cmdTemplate = '''%0 /log /cmd="move" /auto_close /force_close /srcfile=%1 /to=%2 '''
    cmd = cmdTemplate.replace('%0',fastCopyLocation)
    cmd = cmd.replace('%1',txtFileName)
    cmd = cmd.replace('%2',dstination)
    print(cmd)
    os.system(cmd)
    
# import pdb;pdb.set_trace()
def main():
    parser = argparse.ArgumentParser(description='For Copying Extra files with FastCopy')
    parser.add_argument('-s', '-source', required = True)
    parser.add_argument('-d', '-destination', default='.\\')
    parser.add_argument('-b', '-blockSize', default = 200, type = int)
    args = parser.parse_args()
    # import pdb;pdb.set_trace()
    createFileList(args.s,"tg.txt")
    splitTextFile('tg.txt',args.b)
    moveByFastCopy('tgp1.txt',args.d)

if __name__ == '__main__':
    main()
