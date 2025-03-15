
box_width = 100;
box_length = 200;
box_height = 50;


module centered_box(width, length, height) {
  translate([-width/2, -length/2, 0])
  cube([width, length, height]);
}

// Example usage:
//centered_box(box_width, box_length, box_height);

module flat_extruded_triangle(size, height) {
  rotate([90, 0, 0]) // Rotate 90 degrees around the X-axis
    linear_extrude(height = height)
      triangle(size);
}

module triangle(size) {
  polygon(points=[[0, 0], [size, 0], [size / 2, size * sqrt(3) / 2]]);
}

// Example usage:
flat_extruded_triangle(10, 100);


module beveled_box(width, length, height, bevel_size) {
  difference() {
    cube([width, length, height]);
    for (i = [-1, 1]) {
      for (j = [-1, 1]) {
        for (k = [0,1]){
          translate([i * (width/2 - bevel_size), j * (length/2 - bevel_size), k*(height-bevel_size)])
          rotate([0, 0, atan(bevel_size / bevel_size)])
          cube([bevel_size * 2, bevel_size * 2, bevel_size * 2]);
        }
      }
    }
  }
}

// Example usage:
beveled_box(10, 20, 5, 1);