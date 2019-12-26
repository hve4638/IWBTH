///@argu signal...
todo_add(global.todoedit, Todo.signal, argument_count);

for(var i = 0; i < argument_count; i++)
	todo_add(global.todoedit, argument[i]);