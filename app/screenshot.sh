#!/bin/bash

name=$(date +%s)
folder="screenshots"
format="jpg"

full_path=/home/khashayar/scrsht/$name.$format

xfce4-screenshooter -r -s $full_path
#xclip -t image/jpg -i $full_path
#xclip -sel c < /dev/null
#xclip -sel c -t image/jpg -i $full_path
#xclip -sel c -t image/jpg -i $full_path
copyq copy image/jpeg - < $full_path

