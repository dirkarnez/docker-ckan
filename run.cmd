REM run as Administrator
@echo off

set PATH=^
D:\Softwares\PortableGit-2.35.1.2-64-bit\bin;^
C:\Program Files\Docker\Docker\resources\bin;

git clone --recursive https://github.com/ckan/ckan && ^
cd ckan && ^
git checkout ckan-2.9.5 && ^
cd contrib/docker && ^
docker-compose up --build && docker-compose down

pause