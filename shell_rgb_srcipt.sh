#!/bin/bash

# Function to calculate the closest 256-color palette color
rgb_to_256_color() {
    r=$1
    g=$2
    b=$3
	min_distance=999999999
    closest_color=-1

    for i in {0..255}; do
        # Get RGB values of the color in the 256-color palette
        palette_r=$(( (i / 36) * 51 ))
        palette_g=$(( ((i % 36) / 6) * 51 ))
        palette_b=$(( (i % 6) * 51 ))

        # Calculate Euclidean distance in RGB space
        distance=$(( (r - palette_r)**2 + (g - palette_g)**2 + (b - palette_b)**2 ))

        # Update closest color if the current distance is smaller
        if [ "$distance" -lt "$min_distance" ]; then
            min_distance=$distance
            closest_color=$i
        fi
    done

    echo "$closest_color"
}

# Example: Convert RGB(100, 150, 200) to the closest 256-color palette color
r=100
g=150
b=200
closest_color=$(rgb_to_256_color "$r" "$g" "$b")
echo "The closest 256-color palette color is: $closest_color"
