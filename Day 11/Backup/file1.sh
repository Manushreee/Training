echo 'Hello from Bash'

name="Manushree"
echo "Hello $name"

salary=22000
echo "Salary is $((salary*12))"

num1=10
num2=20

echo "Sum is $((num1+num2))"

numbers=(10 20 30 40 50 60)
echo "First Number is ${numbers[0]}"

names=("alex" "bob" "catty" "david")
echo "Last name is ${names[3]}"

# Environment Variables
echo "Current User: $USER"
echo "Home Directory: $HOME"

# Constant Variables
readonly PI=3.14
echo "Value of PI: $PI"
# PI=3.4 -> ERROR

# Special Variables(predefined)
echo "Script Name $0"
echo "Arguments $1 $2 $3"
echo "No. of Arguments $#"
echo "Process ID $$"
echo "Exit Status $?"
