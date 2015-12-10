


camera {
location <0,0,-50>
look_at <0,0,0>
}  


light_source{
<0,5,-50>
rgb <1,1,1>
}




#declare teacup = lathe{
cubic_spline
6
<0,-1>
<1,0>,<2,0>
<2,1>,<2,3>
<0,4>
pigment{

image_map {jpeg "beach.jpg" }
scale 4.55
translate <2.3,0,0>
}
finish{
ambient .2
specular .4
}
scale 2.5
};  


#declare handle = torus{
2.75,.75

pigment{
rgb <0,0,1>*.3
}
}; 


#declare cutout = sphere{
<0,0,0>
5.79
translate <0,4,0>
};

difference{

object{
handle  
rotate <90,0,0>
translate <5,3.75,-2>
}

object{
cutout
}
}

object{
teacup
} 



