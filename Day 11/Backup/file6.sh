# Functions to add two numbers
add_numbers() {
    sum=$(($1 + $2))
    echo "Sum of $1 and $2 is: $sum"
}

add_numbers 10 20

check_file() {
    if [ -f "$1" ]; then
        echo "File '$1' exists"
    else
        echo "File '$1' does not exist"
    fi 
}

check_file "testfile.txt"
check_file "file1.sh"
