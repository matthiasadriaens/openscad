/*
    attempt 3dprintable design sunglasses
    this will become a whole parametric design
    matthiasadriaens@gmail.com
*/
dia = 51;  //in mm , diameter of glasses, whole design is configured with this number, please change (for reasonable desings 40-70mm)
resolution = 40; //change resolution, effects rendertime

module lenshouder()
{
    border = dia-3;
    difference()
    {
        cylinder(h=3.5,r=(dia+2)/2, $fn=resolution);
        translate([0,0,1])
        cylinder(h=2.5,r=dia/2, $fn=resolution);
        cylinder(h=1,r=border/2,$fn=resolution);
    }

    difference()
    {
        difference()
        {
            translate([-3.5,dia/2,0])cube([7,12,2]);
            translate([-2,(dia/2)+1.5,1])cube([4,7,2]); //holder hinge
        }
        translate([0,(dia/2)+6.5,0])
        difference()
        {
            cylinder(h=2,r=7,$fn=resolution);
            cylinder(h=2,r=3.5,$fn=resolution);
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

