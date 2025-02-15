todo_list = []
def add_todo():
    todo = input("Enter the todo you want: ")
    todo_list.append(todo)
    print(todo_list)
def remove_todo():
    num = int(input("give the index of todo: "))
    if num < (len(todo_list)):
        print("Out of range")
    todo_list.pop(num)
    print(todo_list)
def get_all_todos():
    print(todo_list)
 
while True:
    option = int(input("Enter 1 to add todos:  \n Enter 2 to remove todos:  \n Enter 3 to display all todos:  \nEnter 4 to exit: "))
   
    if option == 1:
        add_todo()
    elif option == 2:
        remove_todo()
    elif option == 3:
        get_all_todos()
    else:
        print("Please enter the proper number or option: ")
       
 
has context menu