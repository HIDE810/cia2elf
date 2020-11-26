@echo off
tools\ctrtool --contents=app %1 >NUL 2>NUL
ren app.0000.* app.bin >NUL 2>NUL
md exefs >NUL 2>NUL
tools\3dstool -xtf cxi app.bin --exh exefs\exh.bin --exefs exefs\exefs.bin >NUL 2>NUL
tools\3dstool -xutf exefs exefs\exefs.bin --exefs-dir exefs >NUL 2>NUL
del app.bin >NUL 2>NUL
python make_elf.py >NUL 2>NUL