---
title: "Youtube DL"
date: 2021-05-29T19:13:04-04:00
draft: false
categories:
    - Technology
tags:
    - Linux
---

## What is Youtube-DL?
Youtube-DL is a commandline tool that allows you to easily download high quality copies of youtube videos

## Why is Youtube-DL useful?
Whether it is for a research report or for a creative outlet sometimes having a local copy of a video is just more conviniant

## Installation and use
### Installation
__Ubuntu__
```
    sudo apt install python3
    sudo apt install python3-pip
    sudo apt install ffmpeg
    pip3 install youtube-dl

```

__Fedora__
```
    sudo dnf install python3
    sudo dnf install python3-pip
    sudo dnf install ffmpeg
    pip3 install youtube-dl
```

### Use
While you can simply run a `youtube-dl <URL>` I would reccomend running something more along the lines of the bellow command as it will download the highest quality version of both the video and the audio indivdually then transcode them into one file
```
    youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 -o '/home/$USER/Downloads/%(title)s.%(ext)s' <URL>
```

__Syntax Breakdown__
|                             Syntax                             |                                           Explanation                                          |
|:--------------------------------------------------------------:|:----------------------------------------------------------------------------------------------:|
| youtube-dl                                                     | Root Command                                                                                   |
| -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' | Tells YouTube-DL to download the best mp4 and m4a versions of the video and audio respectively |
| --merge-output-format mp4                                      | Tells YouTube-DL to Merge the Video and Audio Files                                            |
| -o '/home/$USER/Downloads/%(title)s.%(ext)s'                   | Tells YouTube-DL where to output the Merged Video File to                                      |
| < URL >                                                        | URL of YouTube video to Download                                                               |

## Additionl details
* Up until now this post has focused on Youtube-DLs ability to download Youtube Videos as I believe this is likely the most common usecase for this tool but youtube-dl supports a wide range of different sites across the internet. You can find a full list [here](http://ytdl-org.github.io/youtube-dl/supportedsites.html).

* For additonal details about Youtube-DL I would recommend checking out there [Github](https://github.com/ytdl-org/youtube-dl/blob/master/README.md#readme)

## Easy to Use Docker Image
If you prefer Docker containers over having to download tools such as this to your host system. You can find an Easy to Use Docker Image on my Github [Here](https://github.com/ryanvanmass/youtube-dl)
