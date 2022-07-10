import os
import glob
from pathlib import Path
import re



def main(checkInsideThisFileP,TargetFileP):
    if os.path.exists(checkInsideThisFileP):
        dirListToMove = []
        with open(checkInsideThisFileP,'r') as cITFp:
            for lines in cITFp:
                filePath = Path(lines.strip())
                # import pdb;pdb.set_trace()
                if re.match('group\d+',filePath.parent.name) != None and "extractedVideo2" in lines:
                    dirListToMove.append(str(filePath.parent)+'\n')
        with open(TargetFileP,'a+') as tFP:
            tFP.writelines(dirListToMove)


checkInsideThisFile = "D:\\Developed\\Automation\\inHaste\\Haya.txt"
TargetFile = "D:\\Developed\\Automation\\inHaste\\1.txt"
TargetFile2 = "D:\\Developed\\Automation\\inHaste\\2.txt"
TargetFile3 = "D:\\Developed\\Automation\\inHaste\\3.txt"
TargetFile4 = "D:\\Developed\\Automation\\inHaste\\4.txt"
TargetFile5 = "D:\\Developed\\Automation\\inHaste\\game.txt"
TargetFile6 = "D:\\Developed\\Automation\\inHaste\\6.txt"
main(checkInsideThisFile,TargetFile)
# main(TargetFile,TargetFile)
main(TargetFile2,TargetFile)
main(TargetFile3,TargetFile)
main(TargetFile4,TargetFile)
main(TargetFile5,TargetFile)
main(TargetFile6,TargetFile)
main(TargetFile,TargetFile)


# splitTextFile('fs.txt',1000)
# moveDirByCriteria('D:\\paradise\\stuff\\new\\imageset2','C:\\Games\\Sacred2','D:\\paradise\\stuff\\Scanned')
