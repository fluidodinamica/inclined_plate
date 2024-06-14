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



translate([-(18.75-10.15/2),0,23/2+6.5-0.01])
difference(){
cube([10.15,32,23],center=true);

translate([0,0,23/2])
rotate([0,90,0])
cylinder(h=11+0.001,r=5.04/2,center=true);

translate([-2.75,0,23/2])
rotate([0,90,0])
fhex(10,5+0.01);





}


difference(){
translate([-(18.75-10.15/2),0,23+6.5])
rotate([0,90,0])
difference(){
cylinder(h=10.15,r=16,center=true);
cylinder(h=10.15+0.001,r=5.04/2,center=true);

translate([0,0,-2.75])
rotate([0,0,0])
fhex(10,5+0.01);

}

translate([-(18.75-10.15/2),0,23+6.5-0.01])
rotate([0,-90,0])
color([1,0,2])
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
color([1,0,0])cube([37.5,37.5,6.5],center=true);
cylinder(h=6.6,r=6.8/2,center=true);
}

translate([18.75-10.15/2,0,23/2+6.5])
difference(){
cube([10.15,32,23],center=true);

translate([0,0,23/2])
rotate([0,90,0])
    cylinder(h=11+0.001,r=5.04/2,center=true);
}


difference(){
translate([(18.75-10.15/2),0,23+6.5])
rotate([0,90,0])

difference(){
cylinder(h=10.15,r=16,center=true);
cylinder(h=10.15+0.001,r=5.04/2,center=true);
}
translate([(18.75-10.15/2),0,23+6.5])
rotate([0,-90,0])
color([1,0,2])
difference(){
cylinder(h=10.2,r=11.7,center=true);
cylinder(h=10.21,r=8.2,center=true);

translate([-12/2-1.6,0,0])
cube([12,12*2,11],center=true);
    
translate([-1.7,1.6,-12/2])   
cube([14,11.6*2,12]);

}
}



translate([-8.6,15.9,6.4])
rotate([0,-90,0])
color([1,1,1])right_triangle(5,2.75,0.2,10.15);


translate([10.15+8.6,15.9,6.4])
rotate([0,-90,0])
color([1,1,1])right_triangle(5,2.75,0.2,10.15);

translate([8.6,-15.9,6.4])
rotate([90,-90,-270])
color([1,1,1])right_triangle(5,2.75,0.2,10.15);

translate([-10.15-8.6,-15.9,6.4])
rotate([90,-90,-270])
color([1,1,1])right_triangle(5,2.75,0.2,10.15);




