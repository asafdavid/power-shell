Get-ChildItem "$(My Documents)\MTS" -Filter *.mts | `
Foreach-Object{
    $o = Get-Item $_.FullName
    $f = $o.DirectoryName + "\..\" + $o.BaseName + ".mp4"
    $f = Get-Item $f
    $f.CreationTime = $_.LastWriteTime
    $f.LastWriteTime = $f.CreationTime
    $f
}
