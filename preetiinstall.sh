#!/bin/bash
echo "Run this with sudo "
Font_Url="https://nepalifonts.net/downloadfiles/zippedfontstyles/p/r/preeti-normal.zip?st=40H1W0AUgY5kZ264SubiDQ&e=1709480138" 
Dir_forfont="/usr/share/fonts"
echo "Downloading and Unzipping Preeti Font..."
File_name=$(basename "$Font_Url")
wget -O "$File_name" "$Font_Url"
unzip "$File_name" -d "$Dir_forfont"
sudo fc-cache -f -v
rm "$File_name"
echo "Preeti Font installation complete."
