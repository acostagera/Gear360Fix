$oldvids = Get-ChildItem .\*XHC.MP4 -Recurse

foreach ($oldvid in $oldvids) {
    $fixedvid = $oldvid.BaseName+"_Fixed.MP4"
    .\ffmpeg.exe -i $oldvid.Name -y -c:v copy -c:a copy $fixedvid
    }