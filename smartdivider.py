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


def dividesmartly_helper(filename,target_path,src_patter):
    # import pdb;pdb.set_trace()
    filepath = Path(inHastePath) / filename
    if not Path(filepath).is_file():
        return
    with open(filepath,'r') as fp:
        flines = fp.readlines()
        filesToMove = [x.rstrip() for x in flines if src_patter.lower() in x.lower()]
        if target_path == '*':
            filesToMove = []
            # return
    with open(filepath,'w') as fp:
        flines_w = [x.rstrip() for x in flines if not src_patter.lower() in x.lower()]
        fc = '\n'.join(flines_w)
        fp.write(fc)
    if fc.strip() == '':
        Path(filepath).unlink()
    if len(filesToMove) > 0:
        Path(target_path).mkdir(exist_ok=True, parents=True)
        if Path(target_path).is_dir():
            fileListCopy(filesToMove,target_path)
        else:
            with open(target_path,'a+') as fp:
                fp.write('\n'.join(filesToMove)+'\n')
        

def dividesmartly(targetPath,filemovingdict):
    for key,tp in filemovingdict.items():
        dividesmartly_helper(key,tp,targetPath)

def main2():
    targetPath = r'D:\paradise\stuff\new\FS'
    filemovingdict = {'1.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\deletable',
    '2.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\TheekThak',
    '3.txt':r'D:\paradise\stuff\Essence\FS\yummyClips\SachMe',
    '6.txt':r'C:\dumpinggrounds\known_loved_video.txt'}
    
    
    dividesmartly(targetPath,filemovingdict)

def main():
    # Read the CSV file into a pandas DataFrame
    df = pd.read_csv('distributer.csv')
    # breakpoint()
    # Iterate over each row in the DataFrame and apply dividesmartly function
    for index, row in df.iterrows():
        if row['filename'] == '*':
            wildcard_filenames = ['1.txt', '2.txt', '3.txt', '6.txt', 'h.txt']
            for fn in wildcard_filenames:
                dividesmartly_helper(fn, row['tp'], row['targetPath'])
        dividesmartly_helper(row['filename'], row['tp'], row['targetPath'])

if __name__ == "__main__":
    main()
    main2()