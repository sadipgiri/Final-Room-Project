



#declare mirror = 
box { 
    <0,0,0> 
    <10,10,0> 
        pigment { 
            color Orange
        } 
            finish{
                reflection 1 
            }
};
      
      
object{
    mirror
 
    matrix<
        8,0,0, // using a transforamtion matrix....
        0,8,0,
        0,0,8,
        240,200,10
    >
} 
      
      