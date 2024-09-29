#Eric Gutierrez, COSC 4327, Assignment #2 
#Show current Directory
echo "Current Directory: $(pwd)"



#Number of Files : including subdirectories
echo "Number of Files: $(find . -type f | wc -l)"

#Find the name and size of the largest hidden file 
#Uses 'find' to search for files ('-type f') with names with . ('-name".*"')
# du - b {} calculates the sizes of these files in bytes 
# sort -n -r sorts the files in descending order based on size 
# head -n l gets the largest file from the sorted list 
#awk switch the 1st column with the second column
#The cut -c 3- command will remove the first two characters (the ./ prefix) from the output
echo "Largest Hidden File: $(find . -type f -name ".*" -exec du -b {} + | sort -n -r | head -n 1 | awk '{print $2, $1}' | cut -c 3-)"

#List all .c files with comma separation 
echo "C files: $(ls -m *.c)"

