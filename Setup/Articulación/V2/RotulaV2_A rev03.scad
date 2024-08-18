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







module right_triangle(side1,side2,corner_radius,triangle_height){
  translate([corner_radius,corner_radius,0]){  
    hull(){  
    cylinder(r=corner_radius,h=triangle_height);
      translate([side1 - corner_radius * 2,0,0])cylinder(r=corner_radius,h=triangle_height);
          translate([0,side2 - corner_radius * 2,0])cylinder(r=corner_radius,h=triangle_height);  
    }
  }
    
}




translate([-(20.775-10.15/2),0,44.5/2+6.5-0.01])
difference(){
cube([10.15,38,44.5],center=true);

translate([0,0,44.5/2])
rotate([0,90,0])
cylinder(h=15+0.001,r=5.04/2,center=true);

translate([-2.75,0,44.5/2])
rotate([0,90,0])
fhex(10,5+0.01);





}


difference(){
translate([-(20.775-10.15/2),0,44.5+6.5])
rotate([0,90,0])
difference(){
cylinder(h=10.15,r=19,center=true);
cylinder(h=10.16+0.001,r=5.04/2,center=true);

translate([0,0,-2.75])
rotate([0,0,0])
fhex(10,5+0.01);

}

translate([-(20.775-10.15/2),0,44.5+6.5-0.01])
rotate([0,-90,0])
color([1,0,1])
difference(){
cylinder(h=10.2,r=11.7,center=true);
cylinder(h=10.21,r=8.2,center=true);

translate([-12/2-1.6,0,0])
cube([12,12*2,11],center=true);
    
translate([-1.7,1.6,-12/2])   
cube([14,11.6*2,12]);

}
}

translate([0,0,6.5/2+0.02])
difference(){
color([1,0,0])cube([41.55,38,6.5],center=true);
translate([-2.425,0,0])
cylinder(h=6.6,r=6.8/2,center=true);

translate([16.675,0,-4])
cylinder(h=2,r=2.66/2,center=true);
}

translate([20.775-15/2,0,44.5/2+6.5])
difference(){
cube([15,38,44.5],center=true);


translate([0,0,41.5/2])
rotate([0,90,0])
cylinder(h=15.1+0.001,r=5.04/2,center=true);


rotate([0,-90,0])
translate([0,-9.5,0])
cylinder(h=22,r=5,center=true);
    
rotate([0,-90,0])
translate([0,9.5,0])
cylinder(h=22,r=5,center=true);
}


difference(){
translate([(20.775-15/2),0,44.5+6.5])
rotate([0,90,0])

difference(){
cylinder(h=15,r=19,center=true);
cylinder(h=15.1,r=5.04/2,center=true);
}
translate([(20.775-15/2),0,44.5+6.5])
rotate([0,-90,0])
color([1,0,2])
difference(){
cylinder(h=22,r=11.4,center=true);
cylinder(h=22,r=8.4,center=true);

translate([-12/2-1.6,0,0])
cube([12,12*2,22],center=true);
    
translate([-1.7,1.6,-20/2])   
cube([14,11.6*2,20]);

}
}

//translate([-3.925,0,0])
//cube([30,30,6],center=true);





