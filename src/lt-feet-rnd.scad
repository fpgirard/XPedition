include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// washer

bore    = 23;
outside = bore + 25;
inside  = 15.25;
height  = bore + 10;

union() {
    difference() {
         cyl(d=outside, l=height, chamfer = 4);
         translate([0,0,8])cyl(d=bore, l=height);
    }
    cyl(d=inside, l=height);
}