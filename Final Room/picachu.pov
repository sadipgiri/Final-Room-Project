camera{
location <0,0,-10>
look_at <0,0,0>
}


light_source{
<0,0,-100>
rgb <1,1,1>
}

background{rgb <1,1,1>}


#declare photo = box{
<0,0,0>
<4,4,0>
};


object{
photo
pigment{image_map{jpeg "picachu.jpg"} scale 3.7 } 
//rotate <0,90,0>
scale 1
//translate <496,150,275>
}