camera{
location <0,700,700>
look_at <0,0,0>
}


light_source{
<0,1000,-1000>
rgb <1,1,1>
} 


background{ rgb <1,1,1>}


#declare bedWidth = 400;
#declare bedLength = 150;
#declare bedHeight = 40;

#declare bedLegwidth = 20;
#declare bedLegheight = 100;
#declare bedLeglength = 8;

#declare bed = box{
<0,0,0>
<bedWidth,bedHeight,bedLength>
texture{pigment{rgb <1,1,0>}}
translate <0,bedLegheight/2,0>
}; 

#declare bedLeg = cylinder{
<0,0,0>
<0,bedLegheight,0>
bedLeglength  
pigment{image_map{jpeg "WOOD.jpg"}}
};

#declare cloth = box{
<0,0,0>
<bedWidth,0,bedLength>
texture { uv_mapping
        pigment{
           tiling 6 
              color_map{
                [ 0.0 color rgb<1,1,1>]
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
translate <bedWidth,0,0>
}   

object{ // third leg of bed
bedLeg
translate <0,0,bedLength>
}


object{ // fourth leg of bed
bedLeg
translate <bedWidth,0,bedLength>
} 

object{
cloth
translate <0,92,0>
}
 
 

 


