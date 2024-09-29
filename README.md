# Unix Info Finder 
Description: This project is a shell script that reads and processes system files like /etc/passwd and /etc/shadow, extracting relevant user information. The script retrieves the last three lines of these files and processes them to gather usernames, full names, home directories, and encrypted passwords. It outputs the collected data into a formatted file called user_information.txt.
The script performs system tasks such as displaying the current directory, counting the total number of files (including in subdirectories), finding the largest hidden file by size, and listing all .c files in the current directory in a comma-separated format.
Key shell commands used in the script include tail, cut, paste, find, du, and awk

# What I learned 
- I learned how to efficiently use commands like tail, cut, and paste to extract specific fields from system files such as /etc/passwd and /etc/shadow. This involved selecting and parsing specific parts of each file using delimiters.
-  I learned how to navigate through a Unix-like file system, count files, and list specific types of files (such as .c files) in various directories using the find and wc commands.
-  I gained experience in working with hidden files, learning how to find and sort them by size using commands like du and sort. 
