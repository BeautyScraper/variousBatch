from pathlib import Path
import sys
import pandas as pd
from random import shuffle
import random
import numpy as np
import os
import re
import shutil
from tqdm import tqdm
import argparse

folderToCount = r'D:\paradise\stuff\sinisterBabes'

def main():
    if len([x for x in Path(folderToCount).glob('*.jpg')]) > 1000:
        os.system('pimp.bat')

if __name__ == '__main__':
    main()