# Grab-All-Stills-First-Frame
通过FFmpeg批量截取视频首帧，跟随源文件名



1.配置环境
安装brew：
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```

安装FFmpeg：
```brew install ffmpeg```

2.脚本使用说明
获取视频文件路径
![获取视频文件路径](https://github.com/DITStack/Grab-All-Stills-First-Frame/blob/main/image/Get%20path%20demo.png)
打开终端输入：
```cd 替换刚才copy出来的路径```
![CD]（https://github.com/DITStack/Grab-All-Stills-First-Frame/blob/main/image/Terminal%20Demo.png）


截取JPG输入
```Wget https://raw.githubusercontent.com/DITStack/Grab-All-Stills-First-Frame/main/video2jpg.sh
chmod 755 video2jpg.sh
./video2jpg.sh```

截取PNG输入
```Wget https://raw.githubusercontent.com/DITStack/Grab-All-Stills-First-Frame/main/video2png.sh
chmod 755 video2png.sh
./video2png.sh```
