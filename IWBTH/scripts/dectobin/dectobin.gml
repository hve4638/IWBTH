///@argu dec
var num;
var arr, res;
var i = 0;
num = argument[0];
arr = 0;
res = 0;

while(num != 0)
{
    arr[i++] = num mod 2;
    num = num div 2;
}
i--;

return arr;