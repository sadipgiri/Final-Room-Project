background{
rgb <1,1,1>
}


camera{
location <10,0,-10>
look_at <0,0,0>
}
  
  
/*light_source{
<0,0,-10>
rgb <1,1,1>
}  
  
light_source{
<0,10,0>
rgb <1,1,1>
}*/   
  
#declare Leaf = union{
#declare Leaf1 = mesh{
triangle{
<0,0,0>
<2,4,0>
<2,3,-1> 
}
triangle{
<0,0,0>
<2,4,0>
<2,3,1>
} 
triangle{
<6,3,0>
<2,4,0>
<2,3,1>
}

triangle{
<6,3,0>
<2,4,0>
<2,3,-1>
}


texture{
pigment{
rgb <.3,.6,.35>
}
}
} 
;

union{
#declare index = 0;
#while (index<360)
object{
Leaf1
rotate <0,index,0>
}
#declare index = index + 30;
#end
}
};


object{
Leaf
rotate <0,0,-75>
translate <2,4,0>
scale 3
}  


object{
Leaf
rotate <0,0,-75>
translate <2,6,0>
scale 3.5
}