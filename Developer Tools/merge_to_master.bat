@echo off
copy /y "..\\00 Core\\GreymarchDawn.esm" "GreymarchDawn.esm"
.\\merge_to_master.exe %1 "GreymarchDawn.esm" --overwrite --remove-deleted --apply-moved-references
move /y "GreymarchDawn.esm" "..\\00 Core\\GreymarchDawn.esm"
pause