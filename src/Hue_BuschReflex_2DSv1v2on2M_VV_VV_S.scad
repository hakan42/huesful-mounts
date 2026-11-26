use <./lib/bj_components.scad>
$fn= 192;

// Like Hue_BuschReflex_2DSv1on2M_VV_VV_S, but with a Dimmer Switch V1 holder at the
// bottom and a Dimmer Switch V2 holder at the top.
// The V2 holder is 80 x 125 mm, so the frame is 10.6 mm longer than the V1/V1 version.
// Module positions (relative to the bottom edge) are unchanged.

difference() {
    bj_reflex_frame(82, 253);

    translate([10, 54.5, 2]) {
        bj_module_hole();
    }

    translate([10, 125.9, 2]) {
        bj_module_hole();
    }
}


translate([10, 54.5, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 125.9, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([7.75, 7.75, 12.0]) {
    dimmer_switch_v1_frame();
}

translate([2.75, 123.75, 12.0]) {
    dimmer_switch_v2_frame();
}
