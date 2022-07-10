from pathlib import Path
import sys
import pandas as pd
from random import shuffle
import random
import numpy as np
import os
import re
from mutv1 import fileListCopy


inHastePath = r'D:\Developed\Automation\inHaste'


def dividesmartly_helper(filename,tp,targetPath):
    # import pdb;pdb.set_trace()
    filepath = Path(inHastePath) / filename
    if not Path(filepath).is_file():
        return
    with open(filepath,'r') as fp:
        flines = fp.readlines()
        filesToMove = [x.rstrip() for x in flines if targetPath.lower() in x.lower()]
    
    with open(filepath,'w') as fp:
        flines_w = [x.rstrip() for x in flines if not targetPath.lower() in x.lower()]
        fp.write('\n'.join(flines_w))
    if len(filesToMove) > 0:
        if Path(tp).is_dir():
            fileListCopy(filesToMove,tp)
        else:
            with open(tp,'a+') as fp:
                fp.write('\n'.join(filesToMove)+'\n')
        

def dividesmartly(targetPath,filemovingdict):
    for key,tp in filemovingdict.items():
        dividesmartly_helper(key,tp,targetPath)

def main():
    targetPath = r'D:\paradise\stuff\new\FS'
    filemovingdict = {'1.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\deletable',
    '2.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\TheekThak',
    '3.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\SachMe',
    '4.txt':r'C:\dumpinggrounds\known_loved_video.txt'}
    dividesmartly(targetPath,filemovingdict)
    
main()