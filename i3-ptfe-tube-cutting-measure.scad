$fn = 255;

inner_diameter = 4.3;
outer_diameter = 6.1;
base_heigth = 2;
tube_heigth = 44.3;

difference() {
    union() {
        cylinder(d=outer_diameter, h=base_heigth);
        translate([0, 0, base_heigth]) cylinder(d=outer_diameter, h=tube_heigth);
    }
    translate([0, 0, base_heigth]) cylinder(d=inner_diameter, h=tube_heigth);
    translate([1, 1, 0]) cube([10, 10, base_heigth + tube_heigth]);
}

