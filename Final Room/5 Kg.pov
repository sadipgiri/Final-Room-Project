#include "colors.inc"
    background{
        White
    }
    
    camera {
    
        location <0,2,-4>
        look_at <0,0,0>
    }
    
    light_source { 
        <10, 20, -10> 
        color White 
    }
 
   
    text {
        ttf "timrom.ttf" "5 kg" 0, 0
            pigment {
                 Black 
            }
    finish { 
        reflection .25 
        specular 1 
    } 
    
     scale 2
     translate<-2,0.07,-0.3>
}
  
  
  
  
 