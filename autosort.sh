#!/bin/bash

# target directory
TARGET_DIR="$HOME/Downloads"
cd "$TARGET_DIR" || exit

# make dirs if does'nt exist
mkdir -p docs images scripts videos softwares notebooks

# sort files
for file in *; do
    if [ -f "$file" ]; then
        case "$file" in
            *.pdf|*.docx|*.txt|*.tex) mv "$file" docs/ ;;
            *.jpg|*.png|*.gif|*.jpeg)  mv "$file" images/    ;;
            *.sh|*.py|*.cpp)    mv "$file" scripts/   ;;
            *.mp4|*.mkv)        mv "$file" videos/    ;;
	    *.deb)		mv "$file" softwares/ ;;
	    *.ipynb)		mv "$file" notebooks/ ;;
        esac
    fi
done
