// Mounting hole adapter
//
// Licensed under CC-BY 4.0, https://creativecommons.org/licenses/by/4.0/
// Copyright 2022, Bastien Nocera <hadess@hadess.net>


// Diameter of the mounting hole for the smaller part
small_hole_d = 16.3;

// Diameter of the mounting hole for the bigger/original part
large_hole_d = 20;

// Thickness of the wall on which to mount the part (must be exactly right if you want to use a washer on the inside
wall_thickness = 6;

// How much plastic overlaps the outside edge of the hole
lip_width = 2;

// Thickness of the outside lip, or washer (a multiple of the nozzle size is a good thickness)
lip_thickness = 1.2; 

$fn=100;

module adapter() {
    difference() {
        union() {
            cylinder(d=large_hole_d+lip_width*2, h=lip_thickness);
            cylinder(d=large_hole_d, h=wall_thickness+lip_thickness);
        }
        translate([0, 0, -0.1])
        cylinder(d=small_hole_d, h=wall_thickness+lip_thickness+1);
    }
}

module washer() {
    difference() {
        cylinder(d=large_hole_d+lip_width*2, h=lip_thickness);
        translate([0, 0, -0.1])
        cylinder(d=small_hole_d, h=wall_thickness+lip_thickness+1);
    }
}

adapter();
//washer();
