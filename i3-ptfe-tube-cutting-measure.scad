/*
i3 PTFE tube cutting measure
(C) 2024 - nomike[at]nomike[dot]com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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

