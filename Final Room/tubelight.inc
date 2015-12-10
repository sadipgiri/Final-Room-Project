

#declare intensityOftubelight = 3;                   // Increase the intensity of tubelight here by increasinge its number.
#declare tubeLight = 
union{

#declare tubeLength = 100;
#declare tubeEnd = 2;
#declare tube = 

union{ 
    cylinder{ 
        < 0,0,0>,
        <tubeEnd,0,0>,
        2.5 
        texture {
            pigment{
                rgb<0.5,0.5,0.5>
            } 
        } 
           
    } 
 
    cylinder{ 
        <-tubeEnd,0,0>,
        <0.00,0,0>,
        2.5 
            texture { 
                pigment{
                    rgb<0.5,0.5,0.5>
                } 
            } 
        translate <tubeLength,0,0>
    } 
 
    cylinder{ 
        <tubeEnd,0,0>,
        <tubeLength-tubeEnd,0,0>,
        3 
            texture { 
                pigment { 
                    color White
                }
                finish  { 
                    ambient 0.8
                    diffuse 0.2 
                    phong 1 
                    reflection 0.25
                }
            } 
    } 
};

 

#declare handle1 =  
    cylinder{ 
        < -50,0,0>,
        <-50,150,0>, 
        10 
        texture { 
            pigment{
                Black
            }
        } 
    };
    
#declare handle2 =  
    cylinder{ 
        < tubeLength*8 + 50,0,0>,
        <tubeLength*8 + 50,150,0>, 
        10 
        texture { 
            pigment{
                Black
            } 
        } 
           
    }; 
         
#declare handle3 = 
    cylinder{
        < -50,0,0>,
        <-50,60,0>, 
        10 
        texture { 
            pigment{
                Black
            } 
        }
        rotate <0,0,90>
        translate <0,50,0> 
    };

#declare handle4 = 
    cylinder{
        < -50,0,0>,<-50,60,0>, 10 
        texture { 
            pigment{
                Black
            } 
        }
        rotate <0,0,90>
        translate <tubeLength*8+50,50,0>
    };
 


light_source { 
    <0,0,0>          
    color White*intensityOftubelight    
    area_light            
    <0.03, 0, 0> 
    <1.47, 0, 0>
    1, 10                
    adaptive 2          
    jitter              
        looks_like {  
            object{ 
                tube 
            }  
        }              
        scale 8
        
} 
                
                
object{
    handle1
}

object{
handle2
}

object{
    handle3
}

object{
    handle4
} 
                
};
                
                
                
object{
    tubeLight
   
    matrix<
        0.3,0,0,
        0,0.3,0,
        0,0,0.3,
        175,280,325
    >
}