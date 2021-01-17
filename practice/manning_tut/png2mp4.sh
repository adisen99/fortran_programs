#!/bin/sh

ffmpeg -framerate 10 -pattern_type glob -i './images/*.png' -c:v libx264 water_height.mp4
