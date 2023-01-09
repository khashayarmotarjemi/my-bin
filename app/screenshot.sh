#!/bin/bash

name=$(date +%s)
folder="screenshots"
format="jpg"

full_path=/home/khashayar/Readings/NOTES/$folder/$name.$format

xfce4-screenshooter -r -s $full_path
xclip -selection clipboard -t image/jpg -i $full_path
