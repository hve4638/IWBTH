with(Me) {
    if 2208<x && x<4000 {sys_cam.type=4; sys_cam.rx=Me.x-400;  sys_cam.xmax=4000-800;}
}


with(obj_spikeM) {
    if (y==192 || y==416 || y==208 || y==592 || y==448) && 1888<=x && 4100>x && !(2048<x && x<2832 && y==416)
      {image_yscale=-1; y-=1;}
    if (1888<=x && x<=2624) && 544<y {y-=16;}
}