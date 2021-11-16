filelist=$(find *.mov | *.mxf | *.mp4 | *.flv | *.mkv | *.h264 | *.hevc | *.m4v | *.ts | *.avi | *.rmvb | *.mpg)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.*
#$(find -iname *.mov | *.mxf | *.mp4 | *.flv | *.mkv | *.h264 | *.hevc | *.m4v | *.ts | *.avi | *.rmvb | *.mpg)
do
	mkdir output
    ffmpeg -i $filename -vframes 1 -s 1920X1080 -vf "drawtext=fontfile=PingFang.ttc: text=${filename%.*}:x=40:y=10:fontsize=24:fontcolor=black" $PWD/output/${filename%.*}_%05d.jpg
done
IFS=$OLDIFS
