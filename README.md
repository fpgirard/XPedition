![Alt text](/docs/kickstand.png "Kickstand")
# Lectric XPedition Parts

## A collection of 3D printed parts for the Lectric XPedition bike.  

The directory layout is simple.  The <code>src</code> directory has the OpenSCAD code that generated the files in the <code>stl</code> directory.  Here's what I built so far:

  * [<code>kickstand.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/kickstand.stl) - top plate for the kickstand.  Single OpenSCAD file that can generate both washer and top plate
  * <code>battery.scad</code> - 48V battery mount - Now you can mount batteries on a wall for charging or safe keeping
  * <code>headlight.svg</code> - SVG file for laser cutting a clear lens for the AliExpress High Output LED Head Light
  * <code>pannier.scad</code> - clasp for the XPedition pannier bag to allow the bag to be compressed
  * <code>blinker.scad</code> - more permanent mount for the Cutesliving blinker lights available on AliExpress
  * <code>washer.scad</code> - washer to replace the seatpost lever with a M5x20 hexbolt dowel nut and bolt

My favorite so far are the pannier clasps, clear lens for the headlight, and the kickstand plate.  

## Print Settings

The following will help you get the best prints:

  * Printer: Prusa I3 MK3S
  * Rafts: Yes
  * Supports: Yes
  * Infill: 40%
  * Filament brand: Duramic, Overture
  * Filament color: Black
  * Filament material: PETG
  * Notes: Supports are definitely needed for the Cutesliving blinker rear panel as well as the blinker controller.  Kickstand can be printed without supports.

## Post-Printing
Remove support rafts carefully to avoid breaking the frame.

## How I Designed This
All OpenSCAD. I've included these files so you can make the mods _you_ want.  You will also need to use the BOSL and BOSL2 libraries.  Install them via git().


