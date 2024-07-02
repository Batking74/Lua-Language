todos = {}

-- Displays Menu Options
function displayMenu()
    print('Todo List Manager')
    print('1. View All Todos')
    print("2. Add Todo")
    print("3. Update Todo")
    print("4. Remove Todo")
    print("5. Exit")
    print("Choose an option: ")
    usersRequest = io.read()
    return usersRequest
end

-- Create
function addTodoToList()
    print('-------------------Add To List------------------')
    print('What is the name of your todo?')
    newTodo = io.read()
    table.insert(todos, newTodo)
    print('Created a new todo Successfully!')
    print('------------------------------------------------')
    startProgram()
end

-- Read
function displayAllTodos()
    print('----------------------List----------------------')
    for i, todo in ipairs(todos) do
        print(todo)
    end
    print('------------------------------------------------')
    startProgram()
end

-- Update
function updateTodoList()
    print('------------------Update Todo-------------------')
    for i, todo in ipairs(todos) do
        print(i .. '. ' .. todo)
    end
    print('Select which todo you want to Update:')
    id = io.read()
    print('What will the new name of todo number ' .. id .. ' be?')
    newValue = io.read()
    todos[tonumber(id)] = newValue
    print('Updated Successfully!')
    print('------------------------------------------------')
    startProgram()
end

-- Delete
function deleteFromTodo()
    print('-------------------Delete Todo------------------')
    for i, todo in ipairs(todos) do
        print(i .. '. ' .. todo)
    end
    print('Select which todo you want to delete:')
    id = io.read()
    table.remove(todos, id)
    print('Deleted Successfully!')
    print('------------------------------------------------')
    startProgram()
end

-- Ends Program
function terminateProgram()
    print('------------------------------------------------')
    print('Thank You for using my Todo List app!')
    print('------------------------------------------------')
end

-- Starts the Program
function startProgram()
    local res = displayMenu()
    if res == '5' then terminateProgram() end
    if res == '1' then displayAllTodos() end
    if res == '3' then updateTodoList() end
    if res == '4' then deleteFromTodo() end
    if res == '2' then addTodoToList() end
end

startProgram()