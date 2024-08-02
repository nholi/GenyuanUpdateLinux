mkdir Release-Linux-x64/
dotnet publish --configuration Release ./HappyGenyuanImsactUpdate --output ./Release-Linux-x64/Updater
cp "HappyGenyuanImsactUpdate/bin/Release/net8.0/7zz" "Release-Linux-x64/Updater/"
cp "HappyGenyuanImsactUpdate/bin/Release/net8.0/hpatchz" "Release-Linux-x64/Updater/"

dotnet publish --configuration Release ./HDiffPatchCreator --output "./Release-Linux-x64/Patch Creator"
cp "HDiffPatchCreator/bin/Release/net8.0/7zz" "Release-Linux-x64/Patch Creator/"
cp "HDiffPatchCreator/bin/Release/net8.0/hdiffz" "Release-Linux-x64/Patch Creator/"
cp "HDiffPatchCreator/bin/Release/net8.0/hpatchz" "Release-Linux-x64/Patch Creator/"

pause