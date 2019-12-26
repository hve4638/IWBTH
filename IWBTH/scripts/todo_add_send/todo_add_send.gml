///@argu signal
///@argu value...
todo_add(global.todoedit, Todo.signal, 1, argument[0]);
todo_add(global.todoedit, Todo.push, argument_count - 1);

for(var i = 1; i < argument_count; i++)
	todo_add(global.todoedit, argument[i]);