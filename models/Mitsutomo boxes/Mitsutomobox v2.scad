// Your settings:
length = 220;
width = 80;
height = 50; 
wall_thickness = 2;
bevel_box = 14;


module bevel_box(length, width, height,bevel_box){
    difference() {
        cube([length, width, height]);
        
        // top left
        translate([0, 0, height / 2]) {
            rotate(a=[0,0,45]) {
                cube([bevel_box, bevel_box , height], center=true);
            }
        }
        
        // top right 
        translate([0 ,width, height / 2]) {
            rotate(a=[0,0,45]) {
                cube([bevel_box, bevel_box , height], center=true);
            }
        }
        
        // top left
        translate([length, 0, height / 2]) {
            rotate(a=[0,0,45]) {
                cube([bevel_box, bevel_box , height], center=true);
            }
        }
        
        // top left
        translate([length, width, height / 2]) {
            rotate(a=[0,0,45]) {
                cube([bevel_box, bevel_box , height], center=true);
            }
        }
    }
}

difference() {
bevel_box(length, width, height, bevel_box);

#translate([wall_thickness, wall_thickness, wall_thickness]) {
    bevel_box(length - wall_thickness * 2, width - wall_thickness * 2, height +5, bevel_box);
 }
}