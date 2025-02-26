echo "Enter your age"
read age
echo "Are u Indian"
read citizen
if [ $age -ge 18 ] && [ $citizen == "yes" ] || [ $citizen == "YES" ]; then
    echo "You are eligible for vote"
else
    echo "You are not eligible for vote"
fi 