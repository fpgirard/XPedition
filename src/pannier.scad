include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=32;

// Bracket
width = 45;    // x
depth = 25;
height = 5;
hole_width  = 5;
hole_depth = 10;

module mirror2(v) {
    children();
    mirror(v) children();
}

module clasp() {
   difference() {
      cuboid([width,depth,height], rounding=2);
      // clasp slot 
      mirror2([0,1,0]) translate([0,5,0]) cuboid([width*.75,5,height*1.1], rounding=-2);
      translate([0,10,0]) cuboid([13,7,height*1.1], rounding=-2);
    }
}

clasp();
   
    