# Define source and backup directories
SOURCE_DIR="/d/OneDrive - Olam International/VS Code/Day11/Scripting"
BACKUP_DIR="/d/OneDrive - Olam International/VS Code/Day11/Scripting/Backup"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"
