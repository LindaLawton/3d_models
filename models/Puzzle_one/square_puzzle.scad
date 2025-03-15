length = 50;
width = 50;
height = 50;

module square(length, width, height)
{
    cube([length, width, height]);
}


module create_shape(length, width, height , level)
{
    
    cube([length, width, height]); 
    translate([length, 0, 0]) {        
        cube([length , width * level, height]);  
    
}
}
 

color("red") square(length, width, height);


rotate([0,0,0]) {
    translate([0 - 1, -50- 1, 0]) {        
            create_shape(length, width, height, 3);
        }
}

rotate([0,0,-180]) {
    translate([-50- 1, -100- 1 , 0]) {        
            create_shape(length, width , height, 3);
        }
}


rotate([0,0,0]) {
    translate([-100 - 1, -100 - 1, 0]) {        
            color("green") cube([length, width * 4, height]); 
            translate([length, 0, 0]) {        
                color("green") cube([length *4 , width , height]);  
                }
           
            }
            
}

rotate([0,0,-180]) {
    translate([-150 - 1, -150 - 1, 0]) {        
            color("green") cube([length, width * 4, height]); 
            translate([length, 0, 0]) {        
                color("green") cube([length *4 , width , height]);  
                }
           
            }
            
}