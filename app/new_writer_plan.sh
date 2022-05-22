# copy libreoffice template file including styles

file_name="/home/khashayar/document_templates/plan.odt"
echo -e "copy\nfile://${file_name}\0" | xclip -i -selection clipboard -t x-special/gnome-copied-files
#notify-send "a"
sleep 0.5 && xdotool getactivewindow key ctrl+v
