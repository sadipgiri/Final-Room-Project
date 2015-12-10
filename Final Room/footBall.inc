
  
  
#declare footBall = sphere{ 
    <0,0,0>
     4
    texture{
        pigment{ 
            hexagon 
            color White*1
            color White*0
            color White*0.5
            scale <0.115/pi,0.25/pi,0.075>*1.65
                warp {
                    spherical
                    orientation <0,1,0>
                }
            scale 0.175  
            rotate<40,0,0>
        }
    } 
    scale 0.25 
    translate <0,0.25,0>
};
 
 
 
object{
    footBall
    rotate <140,0,0>
    matrix<
        20,0,0,
        0,20,0,
        0,0,20,
        460,28,610
    >
}
  
  
  