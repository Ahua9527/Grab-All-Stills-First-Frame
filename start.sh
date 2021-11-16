#!/bin/bash
filelist=$(find *.mov｜*.mmxf｜*.mp4|.flv|*.mkv|*.h264|*.hevc|*.m4v|*.ts|*.avi|*.rmvb|*.mpg)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.*
#$(find -iname *.mov｜*.mmxf｜*.mp4|.flv|*.mkv|*.h264|*.hevc|*.m4v|*.ts|*.avi|*.rmvb|*.mpg)
do
	mkdir output
    ffmpeg -i $filename -vframes 1 /Users/XXXX/Desktop/Grab_All_Stills_First_Frame/output/${filename%.*}.png
done
IFS=$OLDIFS
