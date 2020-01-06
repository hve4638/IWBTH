var i, str, size, ptype;
size = argument_count;
str = "";
ptype = undefined;

if argument[size - 1] == ""
	size--;

for(i = 0; i < size; i++)
{
	if (typeof(argument[i]) == ptype) && (string(argument[i]) != NL)
		str += " ";

	str += string(argument[i]);
	
	ptype = typeof(argument[i]);
}

if argument_count == size
	str += "\n";

return str;