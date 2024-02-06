# Lectric XPedition Parts

## A collection of 3D printed parts for the Lectric XPedition bike.  These include the following in both OpenSCAD and .stl formats

The directory layout is simple.  The <code>src</code> directory has the OpenSCAD code that generated the files in the <code>stl</code> directory.  Here's what I built so far:

  * Top plate for the kickstand - a singe OpenSCAD file that can generate both the washer and full top plate
  * 48V Battery mount - so you can mount batteries on a wall for charging or safe keeping
  * SVG file for laser cutting a clear lens for the AliExpress High Output LED Head Light
  * Clasp for the XPedition pannier bag to allow the bag to be compressed
  * More permanent mount for the Cutesliving blinker lights available on AliExpress. 
  * Mount for the blinker panel on the handle bars
  * Mount for the Lectric Elite headlight with front rack

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
  * Notes: Supports are needed for the Cutesliving blinker rear panel as well as the blinker controller but the Elite light support can be rotated on the Y axis by 90 degree and not require supports.

## Post-Printing
Remove support rafts carefully to avoid breaking the frame.

## How I Designed This
OpenSCAD - all the way. I've included these files so you can make the mods _you_ want.  You will also need to use the BOSL and BOSL2 libraries.  Install them via git().


