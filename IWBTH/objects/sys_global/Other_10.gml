/// @description Destroy keyblock(Stage4)
/// @param Stage4
with(obj_lock) if other.ki[lock] instance_destroy();
with(obj_key) if other.ki[image_index] instance_destroy();

