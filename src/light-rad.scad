include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// Bracket
mount_width  = 30;  // x
mount_depth  = 55;  // y
mount_height  = 15; //z
arm_height = 30;
bar = 20;           //basket bar
light_depth = 40;

module light() {
   difference() {
     hull() {
         //cylinder(h=mount_width,d=mount_depth); 
         translate([0,0,0])cuboid([mount_width,mount_depth,mount_height]);
         translate ([mount_width/2-7.5,0,mount_height/2+arm_height]) rotate([90,90,0]) cyl(h=mount_depth,d=15);
     }
     // frame mount hole + weld cutout
     translate([0,mount_depth/2,-(mount_height-2)]) rotate([90,0,0]) cylinder(d=bar, h=mount_depth);
     translate([0,0,-(mount_height-10)]) sphere(d=bar);;
     cylinder(d=5.5, h=mount_height);
     // light slot
     translate([0,0,arm_height/2+mount_height]) cuboid([mount_width,light_depth,arm_height*1.5]);
     // light mount hole 
     translate([mount_width/2-7.5,mount_depth/2,mount_height+arm_height-10]) rotate([90,0,0]) cylinder(d=5.5, h=mount_depth);
   }
}
light();