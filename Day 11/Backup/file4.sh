# FOR LOOP

for i in {1..5}
do
    echo "Number: $i"
done

# WHILE LOOP

count=1
while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done 
