# Function to display system info
system_info() {
    echo "Operating System : $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Disk usage:"
    df -h
}

system_info
