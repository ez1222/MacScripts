#!/bin/bash
#
# This Script takes an image and removes the geotags from the file
#
for image_file in "$@"
do
    # Resize the width to 540px 
    #   maitains the aspect ratio
    /usr/bin/exiftool -geotag= -overwrite_original "$image_file" >/dev/null

    basename "$image_file"
done
