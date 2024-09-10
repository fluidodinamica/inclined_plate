$fa = 1;
$fs = 0.4;

module phex(wid,rad,height){
hull(){
translate([wid/2-rad,0,0])cylinder(r=rad,h=height);
rotate([0,0,60])translate([wid/2-rad,0,0])cylinder(r=rad,h=height);
rotate([0,0,120])translate([wid/2-rad,0,0])cylinder(r=rad,h=height);
rotate([0,0,180])translate([wid/2-rad,0,0])cylinder(r=rad,h=height);
rotate([0,0,240])translate([wid/2-rad,0,0])cylinder(r=rad,h=height);
rotate([0,0,300])translate([wid/2-rad,0,0])cylinder(r=rad,h=height);

}
}

module fhex(wid,height){
hull(){
cube([wid/1.7,wid,height],center = true);
rotate([0,0,120])cube([wid/1.7,wid,height],center = true);
rotate([0,0,240])cube([wid/1.7,wid,height],center = true);
}
}



translate([0,0,19/2+6.5-0.01])

difference(){
cube([14,30,19],center=true);

translate([0,0,19/2])
rotate([0,90,0])
cylinder(h=14+0.001,r=5.04/2,center=true);

}



translate([0,0,19+6.5])
rotate([0,90,0])
difference(){
cylinder(h=14,r=15,center=true);
cylinder(h=14+0.001,r=5.04/2,center=true);
}

translate([0,0,6.5/2+0.02])
difference(){
color([1,0,0])cube([30,30,6.5],center=true);

translate([11,7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([11,7.5,2.5])
fhex(5.5,2+0.01);  

translate([-11,7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([-11,7.5,2.5])
fhex(5.5,2+0.01);  

translate([11,-7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([11,-7.5,2.5])
fhex(5.5,2+0.01);      
    
translate([-11,-7.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([-11,-7.5,2.5])    
fhex(5.5,2+0.01);          

}



//Díametro de agujeros pequeños son para metrica fina 3





