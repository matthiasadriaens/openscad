//attempt 3dprintable design sunglasses
//this will become a whole parametric design

lensgrootte = 51;  //in mm , diameter
lensboord = lensgrootte - 3;
nauwkeurigheid = 100; //configure to tweek rendertime

module lenshouder()
{
    difference()
    {
        cylinder(h=3.5,r=(lensgrootte+2)/2, $fn=nauwkeurigheid);
        translate([0,0,1])
        cylinder(h=2.5,r=lensgrootte/2, $fn=nauwkeurigheid);
        cylinder(h=1,r=lensboord/2,$fn=nauwkeurigheid );
    }

    difference()
    {
        difference()
        {
            translate([-3.5,25.5,0])cube([7,12,2]);
            translate([-2,27,1])cube([4,7,2]); //holder hinge
        }
        translate([0,33,0])
        difference()
        {
            cylinder(h=2,r=7,$fn=nauwkeurigheid);
            cylinder(h=2,r=3.5,$fn=nauwkeurigheid);
            translate([0,-5,0])cube([20,10,10], center = true);
        }
    }
}
module connectors()
{
    //connectors
    difference() //lange connector
    {
        translate([24.5,-73,0])cube([2,73,3]);
        cylinder(h=3,r=lensgrootte/2, $fn=nauwkeurigheid);
        translate([0,-74,0])
        cylinder(h=3,r=lensgrootte/2, $fn=nauwkeurigheid);
    }

    translate([0,-36.5,0])
    difference()//gebogen connector
    {
        cylinder(h=3,r=35/2,$fn=nauwkeurigheid);
        cylinder(h=3,r=31/2,$fn=nauwkeurigheid);
        translate([-35/2,-35/2,0])cube([35/2,35,3]);
        translate([0,36.5,0])
        cylinder(h=3,r=lensgrootte/2, $fn=nauwkeurigheid);
        translate([0,-74+36.5,0])
        cylinder(h=3,r=lensgrootte/2, $fn=nauwkeurigheid);
    }
}
lenshouder();

