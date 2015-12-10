#include "colors.inc"
  background{White}
  camera {
    
    location <0,0,-4>
    look_at <0,0,0>
  }
  light_source { <10, 20, -10> color White }  
  
  
  
 #declare footBall = sphere{ 
 <0,0,0>
 4
texture{
 pigment{ hexagon 
          color rgb<1,1,1>*1
          color rgb<1,1,1>*0
          color rgb<1,1,1>*0.5
          scale <0.115/pi,0.25/pi,0.075>*1.65
          warp {
            spherical
            orientation <0,1,0>
          }
 scale 0.175  rotate<40,0,0> }
  } 
 scale 0.25 translate <0,0.25,0>
 };
 
 
 
 object{
 footBall
   rotate <140,0,0>
 }
  
  
  