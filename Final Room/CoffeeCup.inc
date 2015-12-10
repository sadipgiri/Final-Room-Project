
#declare coffeeCup = 
union{

#declare teacup = 
lathe{

    cubic_spline
    6
    <0,-1>
    <1,0>,<2,0>
    <2,1>,<2,3>
    <0,4>
        pigment{
            image_map {
                jpeg "beach.jpg" 
            }
        scale 4.55
        translate <2.5,0,0>
    }
    finish{
        ambient .2
        specular .4
    }
    scale 2.5
};  


#declare handle = 
    torus{

    2.75,
    .75
        pigment{
            Blue*.3
        }
}; 


#declare cutout = 
    sphere{
        <0,0,0>
        5.79
        translate <0,4,0>
};


difference{

object{
    handle  
    rotate <90,0,0>
    translate <5,3.75,-2>
}

object{
    cutout
}

}

object{
    teacup
}

};


object{
    coffeeCup
    //scale 3.5
    //translate <150,100,600> 
    matrix<
        3.5,0,0 //sclaing and translating by using the single transforamtion matrix...
        0,3.5,0,
        0,0,3.5,
        150,100,600
    >
    finish{
        ambient 0.4
    }
} 



