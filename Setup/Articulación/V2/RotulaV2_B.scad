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

translate([12.5,12.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([12.5,12.5,3])
fhex(5.5,2+0.01);   

translate([-11-1.5,12.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([-11-1.5,12.5,3])
fhex(5.5,2+0.01);  


translate([12.5,-12.5,0])
cylinder(h=15,r=2.66/2,center=true);
translate([12.5,-12.5,3])
fhex(5.5,2+0.01);   
    
translate([-11-1.5,-12.5,0])
cylinder(h=15,r=2.66/2,center=true);

translate([-11-1.5,-12.5,3])
fhex(5.5,2+0.01);


}






//Díametro de agujeros pequeños son para metrica fina 3





