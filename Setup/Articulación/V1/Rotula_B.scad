$fa = 1;
$fs = 0.4;

translate([-(15-4/2),0,19/2+6.5])

difference(){
cube([4,30,19],center=true);

translate([0,0,19/2])
rotate([0,90,0])
cylinder(h=4+0.001,r=5.04/2,center=true);

}



translate([-(15-4/2),0,19+6.5])
rotate([0,90,0])
difference(){
cylinder(h=4,r=15,center=true);
cylinder(h=4+0.001,r=5.04/2,center=true);
}

translate([0,0,6.5/2+0.02])
difference(){
color([1,0,0])cube([30,30,6.5],center=true);
cylinder(h=6.6,r=6.8/2,center=true);
}

translate([15-4-4/2,0,19/2+6.5])
difference(){
cube([4,24.8,19],center=true);

translate([0,0,19/2])
rotate([0,90,0])
    cylinder(h=4+0.001,r=5.04/2,center=true);
}



translate([(15-4/2-4),0,19+6.5])
rotate([0,90,0])

difference(){
cylinder(h=4,r=12.4,center=true);
cylinder(h=4+0.001,r=5.04/2,center=true);
}







