#!/bin/bash


even="/opt/290124-wdm/Elmira/HW20-DIR2"
odd="/opt/290124-wdm/Elmira/HW20-DIR1"

cd "$odd"

for file in *; do
    if [[ $file =~ ^[0-9]+$ ]]; then
       if (( $file % 2 == 0 )); then
         mv "$file" "$even"
              echo "Moving $file to $even"
         else
              echo "$file is odd, leaving it in $odd"
          fi
         else
              echo "$file is not a number, leaving it in $odd"
          fi
 done
