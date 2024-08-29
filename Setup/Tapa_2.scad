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




difference(){
cube([50
,100,5],center=true);

translate([12.5,12.5,(2.24+0.5)/2])
cylinder(h=2.24+0.5+0.001,r=6/2,center=true);

translate([12.5,12.5,0])
cylinder(h=5.5+0.001,r=2.52/2,center=true);

translate([12.5,-12.5,(2.24+0.5)/2])
cylinder(h=2.24+0.5+0.001,r=6/2,center=true);
translate([12.5,-12.5,0])
cylinder(h=5+0.5+0.001,r=2.52/2,center=true);

translate([-12.5,12.5,(2.24+0.5)/2])
cylinder(h=2.24+0.5+0.001,r=6/2,center=true);
translate([-12.5,12.5,0])
cylinder(h=5+0.5+0.001,r=2.52/2,center=true);
    
translate([-12.5,-12.5,(2.24+0.5)/2])
cylinder(h=2.24+0.5+0.001,r=6/2,center=true);
translate([-12.5,-12.5,0])
cylinder(h=5+0.001,r=2.52/2,center=true);

//hexagono superior 
translate([0,37,1.2])
fhex(11,4-0.1);

//hueco para bulon concentrico a hexagono
translate([0,37,1.5])
cylinder(h=8+0.001,r=5.04/2,center=true);

//hueco rectangular 37mm-5(ancho de hexagono)-largo/2 de hueco
translate([0,32-4/2,-1.2/2])
color([1,0,1])cube([4
,5,1.4],center=true);


// Cilindro al final del hueco 32-Ltotal-radio/2
translate([0,32-4.5-1.5/2,-1])
cylinder(h=4+0.001,r=1.5,center=true);

//hexagono inferior

translate([0,-37,1.2])
fhex(11,4-0.1);

translate([0,-37,1.5])
cylinder(h=8+0.001,r=5.04/2,center=true); 

translate([0,-32+4/2,-1.2/2])
color([1,0,0])cube([4
,5,1.4],center=true);

translate([0,-32+4.5+1/2,-1])
cylinder(h=4+0.001,r=1,center=true);

}

//color([100,0,1])cube([300,300,4-1], center=true);



