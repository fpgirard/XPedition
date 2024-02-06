include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// Bracket
depth = 80;   // x
width = 67;   // y
height = 9;   // z

cut_depth = 19;
cut_width = 6;
slot_depth = 17;
slot_width = cut_width;


module mirror2(v) {
    children();
    mirror(v) children();
}

module battery() {
   difference() {
     cuboid([depth, width, height]);
     mirror2([0,1,0]) translate([-11, width/2-cut_width/2,0])         cuboid([cut_depth,cut_width,height]); // cutout
     mirror2([0,1,0]) translate([31.5,width/2-cut_width/2,-height/4]) cuboid([slot_depth,slot_width,height/2+1]);  // upper slot
     mirror2([0,1,0]) translate([-28, width/2-cut_width/2,-height/4]) cuboid([slot_depth,slot_width,height/2+1]);  // lower slot
     mirror2([1,0,0]) translate([depth/4,0,4.5])screw_hole("M4,18",head="flat",counterbore=0,anchor=TOP); // screw holes
   }
   
}

battery();    