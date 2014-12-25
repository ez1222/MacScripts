#!/bin/bash
#
# This Script takes a Retina Display image (like a screenshot) and reduces
# its size by:
#
#   - Cutting the width and height by 2 using sips
#   - Changing the DPI to 72.
#
# Note: this currently only works on 2x Retina machines
#
for image_file in "$@"
do
    # Calculate half the height
    H=$(/usr/bin/sips -g pixelHeight "$image_file" | grep 'pixelHeight' | cut -d: -f2)
    HALF_H=$(($H / 2))

    # Resize the height and cut down the DPI to 72 DPI - resizing the height
    #   maitains the aspect ratio
    /usr/bin/sips --resampleHeight "$HALF_H" -s dpiHeight 72.0 -s dpiWidth 72.0 "$image_file" >/dev/null

    basename "$image_file"
done

