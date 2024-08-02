mkdir ./Release-Linux-x64
dotnet publish --configuration Release ./HappyGenyuanImsactUpdate --output ./Release-Linux-x64/Updater
cp "./HappyGenyuanImsactUpdate/bin/Release/net6.0-windows7.0/7zz" "./Release-Linux-x64/Updater/7zz"
cp "./HappyGenyuanImsactUpdate/bin/Release/net6.0-windows7.0/hpatchz" "./Release-Linux-x64/Updater/hpatchz"

dotnet publish --configuration Release ./HDiffPatchCreator --output "./Release-Linux-x64/Patch Creator"
cp "./HDiffPatchCreator/bin/Release/net6.0-windows7.0/7zz" "./Release-Linux-x64/Patch Creator/7zz"
cp "./HDiffPatchCreator/bin/Release/net6.0-windows7.0/hdiffz" "./Release-Linux-x64/Patch Creator/hdiffz"
cp "./HDiffPatchCreator/bin/Release/net6.0-windows7.0/hpatchz" "./Release-Linux-x64/Patch Creator/hpatchz"

pause