module hollow_box(length, width, height, wall_thickness) {
  // Outer box
  cube([length, width, height]);

  // Inner box (subtracted)
  difference() {
    cube([length, width, height]);
    translate([wall_thickness, wall_thickness, wall_thickness])
    cube([length - 2 * wall_thickness, width - 2 * wall_thickness, height - 2 * wall_thickness]);
  }
}


// Example usage:
length = 222;
width = 80;
height = 48;
wall_thickness = 3;

hollow_box(length, width, height, wall_thickness);
