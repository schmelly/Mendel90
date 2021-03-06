//
// Mendel90
//
// GNU GPL v2
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// A test object for calibration
//
include <conf/config.scad>

module cal() {
    difference() {
        union() {
            cube([10,40,5]);
            cube([40,10,6]);
            cube([20,20,10]);
            translate([10, 10])
                cylinder(r = 10, h = 15);
        }
        translate([10,10,15])
            nut_trap(Z_screw_dia / 2, Z_nut_radius, Z_nut_depth);

        translate([5,30,5])
            rotate([0,0,90])
                nut_trap(M3_clearance_radius, M3_nut_radius, M3_nut_trap_depth);

        translate([30,5,6])
            nut_trap(M4_clearance_radius, M4_nut_radius, M4_nut_trap_depth);

    }
}

cal();
