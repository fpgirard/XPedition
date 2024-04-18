include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// washer

diameter = 15;
base = 7;
height = 10;

module ball() {
  union () {
      translate ([0,0,height])sphere(d=diameter);
      cyl(d=base, l=height);
  }
}

ball();    
