camera{
location <10,15,-20>
look_at <0,0,0>
}


light_source{
<0,20,-50>
rgb <1,1,1>
}


background{
rgb <1,1,1>
}

#declare Dustbin = union{

#declare dustBin = cone{
<0,0,0>
0.90
<0,3.25,0>
2.25
texture{pigment{rgb <1,1,1>}}
}; 

#declare dustBincover = cone{
<0,-0.1,-0.1>
0.91
<0,3.25,-0.1>
2.4
texture { pigment{ color rgbf<1,0.7,0, 0.7>}
                  finish { diffuse 0.9 phong 0.5}
                }
};


object{
dustBin
normal{bumps 0.5 scale 0.2}
finish {phong 1}
}  

object{
dustBincover
}
};

object{
Dustbin
}