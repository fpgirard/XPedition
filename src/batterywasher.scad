include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// washer

height = 8;
inside = 2;
outside = 10;
through = 5;  


module washer() {
  difference () {
      cyl(d=outside, l=height);
      cyl(d=inside, l=height);
}

washer();    
