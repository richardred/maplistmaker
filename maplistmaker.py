import os
import tkinter as tk
from tkinter import filedialog
from tkinter import *

root = tk.Tk()
root.withdraw()

filepath = ''

try:
    filepath = os.getenv('LOCALAPPDATA') + '\\osu!\\Songs'
except Exception:
    filepath = filedialog.askdirectory()

map_list = [dI for dI in os.listdir(filepath) if os.path.isdir(os.path.join(filepath,dI))]
url_list = []

for map_dir in map_list:
    tokens = map_dir.split()
    url_list.append('https://osu.ppy.sh/s/' + tokens[0])

def redirect_to_file():
    desktop = os.path.join(os.path.join(os.environ['USERPROFILE']), 'Desktop')
    os.chdir(desktop)
    with open('beatmaplist.txt', 'w', encoding='utf-8') as outfile:
        for item in url_list:
            outfile.write('%s\n' % item)

if __name__ == '__main__':
    redirect_to_file()
