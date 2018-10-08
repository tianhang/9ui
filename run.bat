
@echo off

set /p version="Enter VERSION NO: "

Echo %version%

del /s .\dist\* /q
del /s .\in\src\* /q
del /s .\out\* 	/q

copy C:\xampp\htdocs\cs\XUX_code_release\generatedcode\CS-RM-00067\dist\CS-RM-00067.zip	.\dist

copy C:\xampp\htdocs\cs\XUX_code_release\generatedcode\CS-RM-00159\dist\CS-RM-00159.zip	.\dist

timeout 10

REN	.\dist\CS-RM-00067.zip	"CS-RM-00067 V%version%.zip"

REN	.\dist\CS-RM-00159.zip	"CS-RM-00159 V%version%.zip"

timeout 10


Echo "<---00067--->"

xcopy C:\xampp\htdocs\cs\XUX_code_release\generatedcode\CS-RM-00067\src	.\in\src  /e

START TestProgram.exe

timeout 10

Echo "<---compress 00067--->"

"C:\Program Files\7-Zip\7z.exe" a -tzip  ".\dist\CS-RM-00067 V%version%_min.zip" .\out\src\*

timeout 10


del /s .\in\src\* /q
del /s .\out\* 	/q


Echo "<---00159--->"

xcopy C:\xampp\htdocs\cs\XUX_code_release\generatedcode\CS-RM-00159\src	.\in\src  /e

START TestProgram.exe

timeout 10

Echo "<---compress 00159--->"

"C:\Program Files\7-Zip\7z.exe" a -tzip  ".\dist\CS-RM-00159 V%version%_min.zip" .\out\src\*


Echo "<---Finish--->"


pause




