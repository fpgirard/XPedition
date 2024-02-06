include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// Bracket
mount_width = 12;    // x
mount_depth   = 12;
hole_diameter  =  5;

module light() {
   difference() {
     hull() {
         cylinder(h=mount_width,d=mount_depth); 
         translate([mount_width/1.5,0,15])cuboid([10,mount_depth*2.5,29]);
         }
      // frame mount hole
      translate([0,0,7.5]) nut("M5",thickness="normal", thread="none");
      cylinder(d=5.1, h=20);
      // light slot
      translate([3,0,22]) cuboid([20,13,21]);
      // slot to prevent bracket twist
      translate([5,0,0]) cuboid([25,17,4]);
      // light mount hole 
      translate([7.5,-10,22]) rotate([90,0,0]) cylinder(d=9.1, h=5);
      translate([7.5,11,22]) rotate([0,90,90]) nut("M5",thickness="normal", thread="none");
      translate([7.5,15,22]) rotate([90,0,0]) cylinder(d=5.1, h=mount_depth*2.5);
    }
}

light();
   
    