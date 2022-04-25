$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\Sega32X\

for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 180,0 1735,1080" -region "1556x1080+180+0" -transparent black $files[$i].FullName
}