include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// Bracket
light_depth = 20;   // x
light_width = 38;    // y
light_height = light_depth;   // z

hole_diameter  =  5;

module light() {
   difference() {
     hull() {
         cylinder(h=light_depth,d=light_height*1.5); 
         translate([light_depth/2,0,light_depth])cuboid([14,light_width+18,light_width+3]);
         }
      // frame mount hole
      translate([0,0,-2.0]) nut("M5",thickness="normal", thread="none");
      translate([0,0,-1]) cylinder(d=5.1, h=30);
      // light slot
      translate([0,0,32]) cuboid(40);
      // slot to prevent bracket twist
      translate([0,0,10]) cuboid([40,20.5,4]);
      // light mount hole 
      translate([10,light_width,33]) rotate([90,0,0]) cylinder(d=5.1, h=(light_width+20)*1.5);
    }
}

light();
   
    