/* GNU General Public License <https://www.gnu.org/licenses>
#
# Copyright (c) 2024 F. Pascal Girard
#
*/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=256;

/* [Foot Thickness Options] */
full_offset = 35; //35 for Carless and 20 for Lectric - total distance from raised foot to ground when other foot is on ground

// foot
tube_od = 23;                        //outside diameter of kickstand tube
diameter = tube_od + full_offset;    // per foot diameter + 3 millimeter slop
tube_id = 15.25;                     // inside diameter
height  = 35;                        // foot width
head = 5;

module foot() {
    difference () {
        union() {
            difference() {
                cyl(d=diameter, l=height, chamfer = 4);
                translate([0,0,8])cyl(d=tube_od, l=height);
            }
            cyl(d=tube_id, l=height);
        }
        translate([0,0,0])rotate([0,90,0])cylinder(d=4.5,h=diameter/2);
        translate([diameter/2-head,0,0])rotate([0,90,0])cylinder(d=10,h=head);
        
    }
}
foot();
