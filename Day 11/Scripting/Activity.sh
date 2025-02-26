source_dir="/C/Users\manushree.l\Downloads\sample"
back_up="/C/Users\manushree.l\Downloads\sample/backup"
timestamp=$(date +"%y-%m-%d_%H-%M-%S")
backup_file="backup_$timestamp.tar.gz"
 
# Ensure the backup directory exists
mkdir -p "$back_up"
 
# Create the backup
tar -czf "$back_up/$backup_file" "$source_dir" .
 
 