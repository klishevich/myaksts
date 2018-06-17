d=$(date +%Y%m%d)
echo $d
ssh jupiter.j123.ru "cd ~/apps/myaksts/shared/system && zip -r applic_files$d.zip applic_files"
scp jupiter.j123.ru:"~/apps/myaksts/shared/system/applic_files$d.zip" /Users/mike/Downloads/
ssh jupiter.j123.ru "rm ~/apps/myaksts/shared/system/applic_files$d.zip"
