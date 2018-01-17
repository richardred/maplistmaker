#!/bin/bash
#Bash script to fetch all the download urls for the songs in osu song directory
#Must be run in the the osu song directory.
#Writen by Kok Tan (https://github.com/tankoks)


ls -d */ | cut -d ' ' -f1 | awk '{print "https://osu.ppy.sh/d/"$1}' >> OsuSongs.txt
