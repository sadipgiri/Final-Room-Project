
#declare photo = box{
    <0,0,0>
    <4,4,0>
};


object{
    photo
    pigment{
        image_map{
            jpeg "picachu.jpg"
        } 
        scale 3.7
    } 
        rotate <0,-90,0>
        
        
        matrix<
            35,0,0,
            0,35,0,
            0,0,35,
            4,70,160
        >
}