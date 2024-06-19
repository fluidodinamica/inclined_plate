$fa = 1;
$fs = 0.4;

translate([0,0,24.5/2+6.5-0.01])

difference(){
cube([16.4,38,24.5],center=true);

rotate([0,90,0])
translate([-2.35,0,0])
cylinder(h=17,r=1.5, center=true);

rotate([0,90,0])
translate([-24.5/2,0,0])
cylinder(h=17,r=3.1, center=true);
}



translate([0,0,24.5+6.5])
rotate([0,90,0])
difference(){
cylinder(h=16.4,r=19,center=true);
cylinder(h=17+0.001,r=6.1/2,center=true);

translate([9.9,0,0])
cylinder(h=17,r=1.5,center=true);

}

translate([0,0,6.5/2+0.02])
difference(){
color([1,0,0])cube([38,38,6.5],center=true);

translate([12.2,7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([-11-1.2,7.5,0])
cylinder(h=15,r=2.66/2,center=true);

translate([12.2,-7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([-11-1.2,-7.5,0])
cylinder(h=15,r=2.66/2,center=true);

}

translate([0,0,6.5/2])
color([1,0,0])cube([16.4,55,6.5], center=true);




//Díametro de agujeros pequeños son para metrica fina 3





