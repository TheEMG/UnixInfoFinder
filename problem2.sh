#Eric Gutierrez, COSC 4327, Assignment #2 
# Get the last 3 lines of /etc/passwd and /etc/shadow
tail -n 3 /etc/passwd > passwd_tail.txt
tail -n 3 /etc/shadow > shadow_tail.txt

# Extract the desired fields from /etc/passwd
cut -d ":" -f 1 passwd_tail.txt > temp_username.txt
cut -d ":" -f 5 passwd_tail.txt > temp_fullname.txt
cut -d ":" -f 7 passwd_tail.txt > temp_homedir.txt

# Get encrypted password from /etc/shadow
cut -d ":" -f 2 shadow_tail.txt > temp_encryptedpass.txt

# Combines all the fields 
paste -d "," temp_username.txt temp_fullname.txt temp_encryptedpass.txt temp_homedir.txt  > user_information.txt

# rm temporary files
rm passwd_tail.txt shadow_tail.txt temp_username.txt temp_fullname.txt temp_homedir.txt temp_encryptedpass.txt


