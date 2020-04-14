gml_pragma("global","scr_resource_count()");

globalvar object_count, room_count, sprite_count, sound_count;
sprite_count = 0;
object_count = 0;
room_count = 0;
sound_count = 0;

var i = 0;
while(sprite_exists(i)) i++;
sprite_count = i;

i = 0;
while(object_exists(i)) i++;
object_count = i;

i = 0;
while(room_exists(i)) i++;
room_count = i;

i = 0;
while(audio_exists(i)) i++;
sound_count = i;