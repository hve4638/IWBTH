var L, R;
L = button(Input.left);
R = button(Input.right);
escapetry = button(Input.escape);

if 0 < move_ignore
{
	L = false;
	R = false;
}

if inputp != 0
{
    if L && R
	{
        if inputp == 1
			L = 0;
        else if inputp == -1
			R = 0;
    }
    else
		inputp = 0;
}

if inputp == 0
{
    if R
		inputp = 1;
    if L
		inputp = -1;
}

left = L;
right = R;

if L || R
	escapetry = false;