#!/bin/bash
#
# This Script takes an image and reduces it and scales it so the width is 540px
#
for image_file in "$@"
do
    # Resize the width to 540px 
    #   maitains the aspect ratio
    /usr/bin/sips --resampleWidth 540 "$image_file" >/dev/null

   basename "$image_file"
done

