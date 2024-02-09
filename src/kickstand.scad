/* GNU General Public License <https://www.gnu.org/licenses>
#
# Copyright (c) 2023 F. Pascal Girard
#
*/
include <BOSL2/std.scad>
include <BOSL2/screws.scad>
$fn=128;

// 2 in = 50.8mm
// .75 inches = 19.05mm

// Bracket
w1 = 106;        // quadrilateral
w2 = 150;        // quad base
d1 = 50;         // depth + e
d2 = 15;         // bolt header
d3 = 25;         // stay diameter
h1 = 10;         // washer height
h2 = 19;         // bracket height
hole = 10*1.1;   // 10mm bolt + e
fender = 95;     // fender diameter

module mirror2(v) {
    children();
    mirror(v) children();
}

module washer() {
   module base() {
       hull() {
           linear_extrude(h1) trapezoid(w1=w1, w2=w2, h=d1, rounding = 7);
           translate([0,-10,0]) cylinder(h=h2,d=d2); // Comment out if you want the washer 
       } 
   }
   difference() {
     base();
     translate([0,-10,0])cylinder(h=30, d=hole);                            // mount hole
     translate([0,53,0])cylinder(h=25, d=fender);                           // fender
     mirror2()translate([-64,32,-7])rotate([90,0,23.5])cylinder(h=80,d=d3); // stays
     translate([0,-22,0]) linear_extrude(1) mirror([1,0,0]) text("V0.1", size=4, valign="bottom", halign="center",direction="ltr");
   }
}
washer();
