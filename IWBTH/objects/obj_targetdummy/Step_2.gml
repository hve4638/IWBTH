dps += hit;
dps -= takenlist[| 0];

ds_list_add(takenlist, hit);
ds_list_delete(takenlist, 0);

hit = 0;