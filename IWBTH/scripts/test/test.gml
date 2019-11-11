arr[0] = 1;
arr[1] = 3;
arr[2] = 2;
arr[3] = 4;

t = arr;

cout_show(t, arr);
arr[0] = 3;
cout_show(t, arr);
arr = 0;
cout_show(t, arr);
return 0;