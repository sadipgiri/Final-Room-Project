

#declare BED = union{

#declare bedWidth = 380;
#declare bedLength = 150;
#declare bedHeight = 40;

#declare bedLegwidth = 20;
#declare bedLegheight = 100;
#declare bedLeglength = 8;

#declare bed = 
box{
    <0,0,0>
    <bedWidth,bedHeight,bedLength>
        texture{
            pigment{
                rgb <0.5,0.5,0.5>
            }
            normal{
                bumps 0.5
                scale 0.05
            } 
            finish{
                diffuse 0.9 
                phong 1.0
            }
        }
    translate <0,bedLegheight/2,0>
}; 

#declare bedLeg = 
    cylinder{
        <0,0,0>
        <0,bedLegheight,0>
        bedLeglength  
            pigment{
                image_map{
                    jpeg "WOOD.jpg"
                }
            }
};

#declare cloth = 
    box{
        <0,0,0>
        <bedWidth,0,bedLength>
            texture { 
                uv_mapping
                pigment{
                    tiling 6 
                        color_map{
                            [ 0.0 color rgb<1,1,0.5>]
                            [ 1.0 color rgb<0,0,0>]
                        } 
                    scale 0.10/4
                    rotate<-90,0,0>
                    scale<1/1.6,2,1>
                    } 
        
                } 
    };

object{
    bed 
}


object{ //first leg of bed
    bedLeg
}


object{ //second leg of bed
    bedLeg
    
    matrix<
        1,0,0,
        0,1,0,
        0,0,1,
        bedWidth,0,0>
}   

object{ // third leg of bed
    bedLeg
    
    matrix<
        1,0,0,
        0,1,0,
        0,0,1,
        0,0,bedLength
        >
}


object{ // fourth leg of bed
    bedLeg
    
    matrix<
        1,0,0,
        0,1,0
        0,0,1,
        bedWidth,0,bedLength
    >
} 

object{
    cloth
    
    matrix<
        1,0,0,
        0,1,0,
        0,0,1,
        0,92,0
    >
}
  
};
  
  
object{
    BED
      
    matrix<
        0,0,-1,
        0,1,0
        1,0,0,
        0,0,0
        >
   
     
    matrix<
        0.8,0,0,
        0,0.8,0,
        0,0,0.8,
        362,0,450
    >
  
   
  
}
 

 


