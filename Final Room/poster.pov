camera{
location <0,0,-10>
look_at <0,0,0>
}


background{
rgb<1,1,1>
}


light_source{
<0,0,-15>
rgb <1,1,1>
}


#declare photo = box{
<0,0,0>
<3,4,0>
};


object{
photo
pigment{image_map{jpeg "stevejobs.jpg"} scale 3.8 translate <0,0,0>}

}
