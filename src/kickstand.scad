/* GNU General Public License <https://www.gnu.org/licenses>
#
# Copyright (c) 2023 F. Pascal Girard
#
*/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// Bracket
w1 = 100;        // quadrilateral
w2 = 150;        // 
d1 = 52*1.1;     // depth + e
h1 = 10;         // height
hole = 10*1.1;   // 10mm bolt + e
fender = 90;     // fender diameter

module mirror2(v) {
    children();
    mirror(v) children();
}

module washer() {
   module base() {
       hull() {
           linear_extrude(h1) trapezoid(w1=w1, w2=w2, h=d1, rounding = 7);
           translate([0,-10,0]) cylinder(h=25,d=15);    // Comment out this line if you want the washer - line 1
       }
   }
   difference() {
     base();
     translate([0,-10,0])cylinder(h=30, d=hole); // mount hole
     translate([0,54,0])cylinder(h=25, d=fender);
     mirror2()translate([-64,32,-7])rotate([90,0,23.5])cylinder(h=80,d=25);  
   }
}

    washer();
