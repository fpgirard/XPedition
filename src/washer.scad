include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// washer
inside = 8;
height = 16;
outside = height;
through = 5;  


module washer() {
   difference() {
     cyl(d=outside, l=height, chamfer=1);
     cyl(d=inside, l=height);
     rotate([0,90,0]) {
         cyl(d=through, l=outside);
     }
   }
}

washer();    
