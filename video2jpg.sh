filelist=$(find *.mov｜*.mxf｜*.mp4|.flv|*.mkv|*.h264|*.hevc|*.m4v|*.ts|*.avi|*.rmvb|*.mpg)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.*
#$(find -iname *.mov｜*.mxf｜*.mp4|.flv|*.mkv|*.h264|*.hevc|*.m4v|*.ts|*.avi|*.rmvb|*.mpg)
do
	mkdir output
    ffmpeg -i $filename -vframes 1 $PWD/output/${filename%.*}.jpg
done
IFS=$OLDIFS
