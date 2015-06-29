resolution =50;
module deel1(){
difference()
{
    cylinder(h=1,r=23,$fn=resolution);
    translate([0,(21.5-(5.23/2)),0])cylinder(h=1,r=5.26/2,$fn=resolution);
    translate([0,-(21.5-(5.23/2)),0])cylinder(h=1,r=5.26/2,$fn=resolution);
    translate([-(23-18.9/2-5.6),0,0])cylinder(h=1,r=18.9/2,$fn=resolution);
    cube([29.5,12,4],center=true)
    translate([(23-3-5.67),0,0])cylinder(h=1,r=6,$fn=resolution);
}}

difference()
{
    deel1();
    translate([(23-3-5.67),0,0])cylinder(h=1,r=6,$fn=resolution); 
}
