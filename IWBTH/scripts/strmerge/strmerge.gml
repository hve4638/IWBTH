var i, str;
str = "";
var size = argument_count;

if argument[size - 1] == ""
	size--;

for(i = 0; i < size; i++)
{
	str += string(argument[i]);
	if i < size-1 && argument[i] != NL
		str += " ";
}

if argument_count == size
	str += "\n";

return str;