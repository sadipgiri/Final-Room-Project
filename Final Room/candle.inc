
#declare intensityOfcandlelight = 3;  //change the intensity of light coming from candle here!! if you want to make your room more brighter..... 
 
#declare candle = union{
 
#declare candlePart = 
cylinder{  
    <0,0,0>
    <0,4,0> 
    1
        texture { 
            pigment{ 
                color rgbt<1,1,0,0>
            }
                finish { 
                    diffuse 0.9 
                    phong 0.5
                }
            } 
    translate <0,-6.5,3>
}; 

     

#declare lighteningPart = 
union{
    merge{   
        intersection{
            sphere{
                <0,0,0>,
                1
            }
        box{
            <-1,-1,-1>,
            < 1,1,1>
        }
        matrix<
            1,0,0,    
            0,2.5,0,
            0,0,1,
            0,0,0
        >
        }
    intersection{
        sphere{
            <0,0,0>,
            1
        }
        box{
            <-1,-1 ,-1>,
            < 1,0+0.01,1>
        }
    }
}

}; 




#declare lightPart =   // this is the main ligtening part of candle
    object{
        lighteningPart
        hollow
            pigment{
                color rgbf<1,1,1,1>
            }
  finish { ambient 0 diffuse 0 }
  interior {
    media {
      emission color rgb<1.0,0.75,0.1>*intensityOfcandlelight 
      
      density{ spherical
               
               turbulence 0.4 //0.15
               color_map {
               [0.0 color Black]
               [0.6 color rgb <0.1,0.1,0>*2.75]
               [0.9 color rgb <1,0.8,0.3>]
               [1.0 color Yellow]
                         } 
            matrix<
                1,0,0,      
                0,2.5,0,
                0,0,1,
                0,0,0
            >
                }
        }
    }  
};

light_source{
    <0,0,0>
    color rgb <0.8, 0.5, 0.2>*1
    area_light       
    <0,0,0><0,0.25,0>
    1, 10      
    adaptive 3 
    jitter //circular // causes shoftening of light // its default in Povray too               
    translate<0,4.45,0>
}

 

object{
    lightPart 
        matrix<   //scaling and translating both by single transforamtion matrix
            0.5,0,0,
            0,0.5,0,
            0,0,0.5,
            0.2,-1.2,2.9
        >
    //scale 0.5
    //translate <0.2,-1.2,2.9>
} 
  
object{
    candlePart
}


};


object{
    candle 
        matrix<  // scaling and translating both by a single transformation matrix 
            6,0,0,
            0,6,0,
            0,0,6,
            300,140,125
        >
    //scale 6 
    //translate <300,140,125>
} 



 


 



