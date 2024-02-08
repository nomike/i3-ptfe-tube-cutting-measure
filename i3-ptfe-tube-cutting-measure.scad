$fn = 255;

inner_diameter = 4.3;
outer_diameter = 6.1;
base_height = 2;
tube_height = 44.3;

difference() {
    union() {
        cylinder(d=outer_diameter, h=base_height);
        translate([0, 0, base_height]) cylinder(d=outer_diameter, h=tube_height);
    }
    translate([0, 0, base_height]) cylinder(d=inner_diameter, h=tube_height);
    translate([1, 1, 0]) cube([10, 10, base_height + tube_height]);
}

