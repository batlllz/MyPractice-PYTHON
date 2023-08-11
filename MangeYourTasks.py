tasks = []

def display_menu():
    print("Menu:")
    print("1. Add Task")
    print("2. Mark Task as Completed")
    print("3. Display List")
    print("4. Quit")

def add_task():
    task = input("Enter the task: ")
    tasks.append({"task": task, "completed": False})
    print("Task added!")

def mark_completed():
    display_list()
    task_index = int(input("Enter the index of the task to mark as completed: "))
    tasks[task_index]["completed"] = True
    print("Task marked as completed!")

def display_list():
    for index, task in enumerate(tasks):
        status = "Completed" if task["completed"] else "Not Completed"
        print(f"{index}. {task['task']} - {status}")

while True:
    display_menu()
    choice = input("Enter your choice: ")

    if choice == "1":
        add_task()
    elif choice == "2":
        mark_completed()
    elif choice == "3":
        display_list()
    elif choice == "4":
        print("Goodbye!")
        break
    else:
        print("Invalid choice. Please choose a valid option.")