#!/bin/bash
 
DST_FOLDER="./bin/Attorney_Online.app/Contents/Frameworks"
 
cd ..
 
mkdir $DST_FOLDER
 
cp libbass.dylib $DST_FOLDER
cp libbassopus.dylib $DST_FOLDER
 
install_name_tool -id @executable_path/../Frameworks/libbass.dylib $DST_FOLDER/libbass.dylib
 
install_name_tool -change @loader_path/libbass.dylib @executable_path/../Frameworks/libbass.dylib ./bin/Attorney_Online.app/Contents/MacOS/Attorney_Online
