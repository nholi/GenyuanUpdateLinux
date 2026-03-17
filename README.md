# GenyuanUpdate
A hdiff-using update program for GenyuanImsact, now on Linux! 

## Annoucements

### Don't use this for ->3.6 Update
From 3.6, miHoYo changed `StreamingAssets/Audio/GeneratedSoundBanks/Windows` to `StreamingAssets/AudioAssets`, but the launcher is responsible for the modification, not the update package.  

This won't be fixed as I don't want to pollute the code any more. 

### Explanation of Limited Support

Since version 4.6, HoYoPlay has gradually adopted `sophon chunk` as its primary update distribution and installation mode.

This program only adapts to hdiff update packages, so it will not add support for the corresponding feature. However, this software will still receive basic bug fixes and optimization updates (if necessary).

## Usage
### How to use the patcher / Updater
You should have the following things:

- A game (for sure)
- One or more upgrade packages (zip file)
- A release of this program

You can use it by the instruction here or in the program.     
First of all, it will ask for the full path of game directory.      
Next, it will ask you to choose how to check the files after update:   
- 0 - Don't have any check
- 1 - _(Recommended)_ Only check file size (usually < 10s, very fast, in most cases enough)
- 2 - Full check on MD5 (the speed depends on your disk, it will take a long time if the data isn't on a fast-speed drive like SSD)

Then, you need to type how many zip files you have.     
After that, you just need to drag zip files one by one (press enter after dragging in), then the update program will finish the update process automatically.

Enjoy it!

### How to create a patch / Patch Creater
You can refer to the following command line usage.
```
Usage: hdiffpatchcreator
  -from <versionFrom> <source_directory>
  -to <versionTo> <target_directory>
  -output_to <output_zip_directory>
  [-p <prefix>] [-reverse] [--skip-check]
```
  
By using this program, you can get a package named: 
```
[prefix]_<versionFrom>_<versionTo>_hdiff_<randomstr>.zip
```
e.g. `game_3.4_8.0_hdiff_nj89iGjh4d.zip`
If not given, prefix will be `game`.

`-reverse` option: After package is created, reverse 'versionFrom' and 'versionTo' and create another package.

`--skip-check` option: skip the Basic Mode check (only compare file size). Notice: For the patch creator, MD5 computing when comparing files is essential. You are recommended to create Update packages on a disk with high I/O speed (like SSD).

`--only-include-pkg-defined-files` option: ignore all files not defined in 'pkg_version' file to avoid unrelated content, like local live updates, cache and error logs, to be included in the update package.  
`--only-include-pkg-defined-files` excludes specified language audio files defined in `Audio_*_pkg_version`. If want to include them, use `--include-audios` option.
