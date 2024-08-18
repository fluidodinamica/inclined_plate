translate([0,0,1.2/2])
rotate([0,90,0])
difference(){
translate([0,0,23/2])
rotate([0,90,0])

difference(){
cylinder(h=1.2,r=19,center=true);
cylinder(h=10.15+0.001,r=6/2,center=true);
}
translate([0,0,23/2])
rotate([0,-90,0])
color([1,0,2])
difference(){
cylinder(h=10.2,r=11.6,center=true);
cylinder(h=10.21,r=8.4,center=true);

translate([-12/2-1.6,0,0])
cube([12,12*2,11],center=true);
    
translate([-1.7,1.6,-12/2])   
cube([14,11.6*2,12]);

}
}
translate([0,0,1.2/2])
rotate([0,90,0])
difference(){
cube([1.2,38,23],center=true);

translate([0,0,23/2])
rotate([0,90,0])
    cylinder(h=11+0.001,r=6.1/2,center=true);
}
