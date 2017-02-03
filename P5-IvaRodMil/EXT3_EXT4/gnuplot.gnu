set terminal svg
set title 'Create Folder'
set output 'CreateFolder.svg'
set xlabel 'Number of execution'
set ylabel 'execution time (s)'
plot 'createfolderext3.dat' using 1:2 title 'EXT3' with lines , 'createfolderext4.dat' using 1:2 title 'EXT4' with lines

set terminal svg
set title 'Create Files'
set output 'Create_Files.svg'
set xlabel 'Number of files'
set ylabel 'execution time (s)'
plot 'createfilesext3.dat' using 1:2 title 'EXT3' with lines , 'createfilesext4.dat' using 1:2 title 'EXT4' with lines

set terminal svg
set title 'Write Files'
set output 'Write_Files.svg'
set xlabel 'Number of files'
set ylabel 'execution time (s)'
plot 'writefilesext3.dat' using 1:2 title 'EXT3' with lines , 'writefilesext4.dat' using 1:2 title 'EXT4' with lines

set terminal svg
set title 'Read Files Linear'
set output 'Read_Files_Linear.svg'
set xlabel 'Number of files'
set ylabel 'execution time (s)'
plot 'readfilelinearext3.dat' using 1:2 title 'EXT3' with lines , 'readfilelinearext4.dat' using 1:2 title 'EXT4' with lines

set terminal svg
set title 'Read Files Random'
set output 'Read_Files_Random.svg'
set xlabel 'Number of files'
set ylabel 'execution time (s)'
plot 'readfilerandomext3.dat' using 1:2 title 'EXT3' with lines , 'readfilerandomext4.dat' using 1:2 title 'EXT4' with lines

set terminal svg
set title 'Delete Files'
set output 'Delete_Files.svg'
set xlabel 'Number of files'
set ylabel 'execution time (s)'
plot 'deletefilesext3.dat' using 1:2 title 'EXT3' with lines , 'deletefilesext4.dat' using 1:2 title 'EXT4' with lines
