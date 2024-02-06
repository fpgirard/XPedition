// Bracket
mount_diameter = 12;    // x
mount_height   = 15;
hole_diameter  =  5; 
span           = 80;

module mirror2(v) {
    children();
    mirror(v) children();
}

// OpenSCAD stuff
$fn=128;

module mount() {
   difference() {
     union() {
         mirror2() translate([span/2,0,0]) cylinder(h=mount_height,d=mount_diameter); 
         translate([0,0,2.5]) cube([span,mount_diameter,5], center=true);}
         mirror2() translate([span/2,0,0])cylinder(h=2*mount_height, d=hole_diameter);    
    }
}


mount();
   
    