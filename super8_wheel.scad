$fn=30;

//diameter_inner of super8 wheel in mm
diameter_inner=20; //[10, 20, 100]
//diameter_outer of super8 wheel in mm
diameter_outer=35; //[15, 35, 100]
//diameter_screw of super8 wheel in mm
diameter_screw=5; //[3, 5, 14]
// thickness of wheel
thickness=13; //[9, 13, 20]
// thickness of super8
super8=9; //[4, 9, 12]

super8_wheel(diameter_inner,diameter_outer,diameter_screw,thickness,super8);


module super8_wheel(size, height)
{
difference() 
    {
    union(){
        translate([0,0,0]) rotate([0,0,0]) cylinder(h=(thickness-super8)/2, r1=diameter_outer/2, r2=diameter_outer/2);
        translate([0,0,(thickness-super8)/2]) rotate([0,0,0]) cylinder(h=super8, r1=diameter_inner/2, r2=diameter_inner/2);
        translate([0,0,(thickness-super8)/2+super8]) rotate([0,0,0]) cylinder(h=(thickness-super8)/2, r1=diameter_outer/2, r2=diameter_outer/2);
        }   
    translate([0,0,0]) rotate([0,0,0]) cylinder(h=thickness, r1=diameter_screw/2, r2=diameter_screw/2);
    }
}   