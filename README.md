# Scara Draw 2D

Here's a collection of sources and utilities for the Scara Draw 2D, a robot that draws on a piece of paper using a SCARA arm. See the [Instructable](https://www.instructables.com/id/Scara-Draw-2D/) or [Maker Share](https://makershare.com/projects/scara-draw-2d).

## Creating SVG
You can create SVG graphics in any way you might normally make one such as through a vector graphics programs like Inkscape or Illustrator. Be careful—some programs reflect the y-axis in drawings.

### SVG restrictions
The file should be paths and not have any text in order for the g-code conversion to work properly. In Inkscape, do this with `Path > Object to Path`, and in Illustrator, this is `Type > Create Outlines`.

### Arranging the Object
Until we get work offsets working, the drawing has to be placed offset inside the svg. The simplest way to do this is by pasting it into a template with an offset rectangle for the paper. The g-code conversion from the utility automatically ignores paths with opacity `0.99*`, which includes 254/255 opacity. This lets the template include shapes that are ignored.

## SVG to g-code
Use the `trace` utility, which wraps around [juicy-gcode](https://github.com/domoszlai/juicy-gcode) to produce g-code from the svg. Example usage:

    trace spiral.svg
  
This will create a file `spiral.gcode` in the same folder as `spiral.svg`.

## Sending g-code
Using [Universal Gcode Sender](https://winder.github.io/ugs_website/download/),
version 2.0 Platform. Macros are included as `ugs-macros.json`, go to `Machine > Edit Macros > Import` and select the file. The Macros tab should appear next to the Send Progress tab.

[![Berbawy Makers](https://img1.wsimg.com/isteam/ip/775e3d6a-d7bd-475c-b754-040291ed09d1/BerbawyMakersInc_Marks-trace.jpg/:/cr=t:23.21%25,l:0%25,w:100%25,h:53.59%25/rs=w:388,h:194,cg:true)](makers.berbawy.com)


