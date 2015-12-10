#include "colors.inc"


camera{
location <0,0,-20>
look_at <0,0,0>
}


background{
rgb <1,1,1>
}



light_source{
<0,0,-10>
rgb <1,1,1>
}



#declare sword = union{

#declare Handle1 = sphere{
<0,0,0>
.65
pigment{image_map{jpeg "handle1.jpg"}scale 10}
};


#declare Handle2 = cylinder{
<0,0,0>
<0,2,0>
.38  
pigment{image_map{jpeg "handle.jpg"}}
};

#declare Handle3 = torus{ 
.65,.25
texture{pigment{rgb <0.67,0.5,0.1>}}
};
 


object{
Handle1 
matrix <
0.87,0,0,0
0,1,0,6.5
0,0,0.2,0
> 

pigment{image_map{jpeg "sword.jpg"}scale 2}
}


object{
Handle2 
translate <0,4,0>
}

object{
Handle3
translate <0,4.2,0>
}
};


object{
sword
scale 1.5
rotate <0,0,-60>
}



object{
sword
scale 1.5
rotate <0,0,60>
} 



  


