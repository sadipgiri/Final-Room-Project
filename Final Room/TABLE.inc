

#declare Table = 

union{


#declare tablelegheight = 1;
#declare tablelegthickness = 0.08;
#declare uppertablepartthickness = .05;
#declare uppertablepartwidth = 1.3;





#declare TableLeg = cylinder{
    <0,0,0>
    <0,tablelegheight,0>  
    tablelegthickness 
        pigment{
            image_map{
                jpeg "WOOD.jpg"
            } 
            scale 50
        } 
    scale 1.1
};


object{
    TableLeg 
}  





#declare UpperTablePart = box{
    <-uppertablepartwidth,-uppertablepartthickness,-uppertablepartwidth>
    <uppertablepartwidth,uppertablepartthickness,uppertablepartwidth>
    pigment{
        image_map{
            jpeg "WOOD.jpg"
        } 
        scale 50
    }
    scale .7 
};


object{
    UpperTablePart
    translate <0,1.2,0> 
}


object{
    UpperTablePart
    scale .3
}


};


object{//near window
    Table 
  
    matrix<
    80,0,0,
    0,80,0
    0,0,80,
    250,1,100
    >
}   





object{//near door
    Table 
    
    matrix<   
    80,0,0,
    0,80,0,
    0,0,80,
    190,1,605
    >
}   


