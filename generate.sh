#!/bin/bash

for l in 0 1 2 3; do
  ./bin/heatmap-generator $l
done

convert heatmap-layer-*.svg -append heatmap.png
display heatmap.png &
