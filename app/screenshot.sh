#!/bin/bash

$name=date +%s
$folder="screenshots"
$format="jpg"

xfce4-screenshooter -r -s /home/khashayar/Readings/NOTES/$folder/$name.$format
echo -n <img>$folder/$name.$format</img> | xclip -selection clipboard

