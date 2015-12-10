#include "colors.inc"
  background{White}
  camera {
    
    location <0,0,-14>
    look_at <0,0,0>
  }
  light_source { <10, 20, -10> color White }  
  
  
  #declare fan = union{
  #declare fan1 = union{
  #declare i = 0;
  #while(i<360)
  triangle{<0,0,0>,<0,2,0>,<1,2,0> texture{pigment{White*0.2}}  rotate <0,30,0> rotate <0,0,i>}
 
  #declare i = i + 45;
  #end
  };
  
  object{
  fan1 
   translate <0,0,-0.1>
  }
  
  
  torus{
  1.9,0.1   
  rotate<90,0,0>
  scale <1.3,1.3,10.3>
  texture{pigment{White}}} 
  };
  
  
  object{
  fan  
  }    
  
  
  
  
  
  
 