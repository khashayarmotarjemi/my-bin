#!/bin/bash

str=$(date +"%D %T")
str2="${str// /-}"
str3="${str2////-}"
str4="${str3//:/.}"
echo -n "<d-$str4></d-$str4>" | xclip -selection clipboard


