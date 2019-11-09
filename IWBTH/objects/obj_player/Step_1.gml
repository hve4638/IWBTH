var L, R, E;
L = button(Input.left);
R = button(Input.right);
E = button(Input.escape);

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

if L || R || !canescape
	E = false;

if !escapetry && 0<escape_idx
	E = false;


left = L;
right = R;
escapetry = E;

