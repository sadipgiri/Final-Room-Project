#include "colors.inc"

camera{
location <0,0,-25>
look_at <0,0,0>
}

light_source{
<0,0,-40>
rgb<1,1,1>
}


box { <0,0,0> 
      <10,10,8> 
      pigment { color Orange} 
      finish{ reflection 1 }
      } 
      
      
      sphere{
      <0,0,-10>
      1
      pigment{image_map {jpeg "sky.jpg"}}
      translate <5,5,0>
      }