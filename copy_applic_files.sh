ssh jupiter.j123.ru 'cd ~/apps/myaksts/shared/system && zip -r applic_files.zip applic_files'
scp jupiter.j123.ru:~/apps/myaksts/shared/system/applic_files.zip /Users/mike/Downloads/
ssh jupiter.j123.ru 'rm ~/apps/myaksts/shared/system/applic_files.zip'
