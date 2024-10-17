![](./docs/kickstand.png)
# Lectric XPedition Parts

## A collection of 3D printed parts for the Lectric XPedition bike.  

The directory layout is simple:
  * <code>src</code> has OpenSCAD source code
  * <code>stl</code> contains exported <code>stl</code> files
  * <code>svg</code> contains vector and .pdf files for laser cutting.
  * <code>docs</code> has images, documents, schematics, and other supporting files

In each of these directories will be another README.md file with directory details. 

So far, I've created:

  * [<code>kickstand.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/kickstand.stl) - The OG Kickstand Top Plate (KTP).
  * [<code>haul-lt-feet.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/haul-lt-feet.stl) - Feet for the Specialized Haul LT kickstand.  Modify <code>full_offset</code>code> for different tire sizes.
  * [<code>battery.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/battery.stl) - 48V battery mount - Now you can mount batteries on a wall for charging or safe keeping.
  * [<code>headlight-rad.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/headlight-rad.stl) - Mount for the Ali Express headlight that works really well for the Rad front basket.
  * [<code>headlight.svg</code>](https://github.com/fpgirard/xpedition/blob/main/svg/headlight.svg) - SVG file for laser cutting a clear lens for the AliExpress High Output LED Head Light.
  * [<code>pannier.scad</code>](https://github.com/fpgirard/xpedition/blob/main/stl/pannier.stl) - Clasp for the XPedition pannier bag to allow the bag to be compressed.

This KTP project had 4 major phases:  Design, Manufacturing, Distribution, and Support:  

## Design

All my designs are open-source and use [<code>OpenSCAD</code>](https://openscad.org/). I've included these files so you can make the mods _you_ want.  You will also need to use the [<code>BOSL2</code>](https://github.com/BelfrySCAD/BOSL2) library.  Except for the KTP, all of these components can be used as 3D printed parts, either as PLA or PETG.

For KTP, I used a 3D prototype to test for fit but I was naive to think that you can submit an STL file to a machine shop and expect a reasonable price. The process is far more complicated and requires that you convert the kickstand.stl file to a STEP-formatted file (kickstand.step).   This process took days to complete and I used Autocad's Fusion360 mesh manipulation features, particularly <code>generate face groups</code> and <code>combine face groups</code> to create a fully parametric STEP file from the original STL version. This distribution includes both the STL and the resulting STEP file.  If you have access to a machine shop, submit the <code>kickstand.step</code> file.

## Manufacturing

Wildly varying prices

## Distribution

Google forms
Shipping - pirate bay

## Support

Facebook, email, text, 
## How I Designed This
All OpenSCAD. I've included these files so you can make the mods _you_ want.  You will also need to use the [<code>BOSL2</code>](https://github.com/BelfrySCAD/BOSL2) library.
T To convert .stl files to .step, we're using Autocad's Fusion360 mesh manipulation features, particularly 'generate face groups' and 'combine face groups'.


