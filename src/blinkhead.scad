include <BOSL/constants.scad>
use <BOSL/shapes.scad>

// Bracket on blinker
mount_width   = 17.25;
mount_height = 2.5;
neck_width = 13;


// OpenSCAD stuff
$fn=128;

module base() {
    difference() {
        translate([19,0,-1.75]) cuboid([17,15,4], fillet=1, edges=EDGE_TOP_FR + EDGE_TOP_BK, $fn=24); //cube([17,15,4], center=true);
        translate([24,0,0]) cylinder(d=5,h=10, center=true);
        }
    }
    
module mount() {
    difference() {
        cuboid([1.25*mount_width,1.5*mount_width,mount_height+5], fillet=1, edges=EDGE_TOP_FR + EDGE_TOP_RT + EDGE_FR_RT + EDGE_FR_LF + EDGE_TOP_LF, $fn=24);
        translate([0,4,1]) cube([mount_width, mount_width + 10, mount_height], center=true);
        translate([0,4,mount_height+4.5]) cube([neck_width, mount_width + 10, mount_height+10], center=true);
    }
    translate([0,(mount_width+mount_height)/2,-mount_height*.9])rotate([0,90,0]) cylinder(r=mount_height/2,h=mount_height, center=true);
}
union() {
    mount();
    base();
}