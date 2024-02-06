include <BOSL/constants.scad>
use <BOSL/shapes.scad>

// Bracket
mount_width   = 35;    // x
mount_length = 130;    // y 
mount_height = 5;       // z
hole_span = 64;        //
hole_width = 5.5;      //


module mirror2(v) {
    children();
    mirror(v) children();
}

// OpenSCAD stuff
$fn=128;

module base() {
    hull() mirror2() translate([mount_length/2,0,0]) cylinder(h=mount_height,d=mount_width);
    mirror2() hull() mirror2([0,1,0]) translate([hole_span,38,0]) cylinder(h=mount_height,d=mount_width/2);
}
    

difference() {
    base();
    translate([-25,0,0]) mirror2() translate([hole_span/2,0,0]) cylinder(h=hole_width,d=hole_width);
    translate([mount_length/2,0,0]) cylinder(h=mount_height,d=hole_width/3);
}
    