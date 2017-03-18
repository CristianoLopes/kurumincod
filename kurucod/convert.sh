#!/bin/sh

for file in ./*.mp4; do
Novo="$(echo "$file" | sed 's:.mp4:.mp4:')"
echo "$Novo"
ffmpeg -i "$file" -b:a 1766k -pix_fmt yuv420p "$Novo"
done


