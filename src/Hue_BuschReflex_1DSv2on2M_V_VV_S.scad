use <./lib/bj_components.scad>
$fn= 192;

// Like Hue_BuschReflex_1DSv1on2M_V_VV_S, but with a Dimmer Switch V2 holder.
// The V2 holder is 80 x 125 mm, so the frame is 10 mm longer than the V1 version.
// Module positions (relative to the bottom edge) are unchanged.

difference() {
    bj_reflex_frame(82, 206);

    translate([10, 10.15, 2]) {
        bj_module_hole();
    }

    translate([10, 81.6, 2]) {
        bj_module_hole();
    }
}


translate([10, 10.15, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 81.6, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}


translate([2.75, 76.8, 12.0]) {
    dimmer_switch_v2_frame();
}
