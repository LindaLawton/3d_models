


module tube_with_border(inner_diameter, border_thickness, height, $fn = 100) {
  difference() {
    cylinder(h = height, d = inner_diameter + 2 * border_thickness, $fn = $fn);
    cylinder(h = height + 0.1, d = inner_diameter, $fn = $fn);
  }
}

// Example usage:
tube_with_border(inner_diameter = 44, border_thickness = 3, height = 50, $fn = 100);


radius = 20;
height = 2;

translate([0, 0, 0 ]) cylinder(h = height, r = radius);


x_size = 11;
y_size = 2.7;
cross_height = 15;

translate([-x_size/2, -y_size/2, 0]) cube([x_size, y_size, cross_height]);

rotate([0, 0, 90]) translate([-x_size/2, -y_size/2, 0]) cube([x_size, y_size, cross_height]);

