


#declare Dustbin = union{

#declare dustBin = 
cone{
    <0,0,0>
    0.90
    <0,3.25,0>
    2.25
    texture{
        pigment{
            White
        }
    }
}; 

#declare dustBincover = 
cone{
    <0,-0.1,-0.1>
    0.91
    <0,3.25,-0.1>
    2.4
    texture {
        pigment{
            color rgbf<1,0.7,0, 0.7>
        }
            finish { 
                diffuse 0.9 
                phong 0.5
            }
        }
};


object{
    dustBin
        normal{
            bumps 0.5
            scale 0.2
        }
            finish {
                phong 1
            }
}  

object{
    dustBincover
}

};

object{
    Dustbin  
        matrix<
            12,0,0
            0,12,0,
            0,0,12,
            250,1,605
        >
}