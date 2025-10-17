#!/bin/bash

input="$1"

# Determine source file
if [ -f "$input.png" ]; then
  src="$input.png"
elif [ -f "$input.jpg" ]; then
  src="$input.jpg"
elif [ -f "$input.webp" ]; then
  src="$input.webp"
else
  echo "No source file found for $input"
  exit 1
fi

echo "Using $src as source"

# Generate PNG if it doesn't exist
if [ ! -f "$input.png" ]; then
  echo "Creating $input.png from $src"
  magick "$src" -strip -quality 90 "$input.png"
fi

# Generate WebP if it doesn't exist
if [ ! -f "$input.webp" ]; then
  echo "Creating $input.webp from $src"
  magick "$src" -strip -quality 90 "$input.webp"
fi

# Generate JPG if it doesn't exist
if [ ! -f "$input.jpg" ]; then
  echo "Creating $input.jpg from $src"
  magick "$src" -strip -interlace Plane -sampling-factor 4:4:4 -quality 95 "$input.jpg"
fi
