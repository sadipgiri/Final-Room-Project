
#declare FLAG = union{

    cylinder{           //vertical part of flag
        <5,-2.5,0>      //base center
        <5,4,0>         //cap center
        .3              //radius
                texture{
                    pigment{
                        Blue
                    }
                }
    } 



sphere{                 //flag base
    <5,-2.5,0>          //center
    .4                  //radius
    texture{
        pigment{
            Blue
        }
    }
}



  


#declare ytorus = .4;


#declare Torus = torus{
    .7                  //major axis
    .2                  //minor axis
    translate <5,0,0>
        texture{
            pigment{
                rgb <1,0,.75>
            }
        }
};


  



cone{                   //flag cap
    <5,3,0>             //baSe point
    0                   //base point radius
    <5,6,0>             //cap point
    .9                  //cap point radius
    texture{
        pigment{
            rgb<1,0,.25,>
        }
    }
}



  

difference{

union{

cylinder{
    <0,0,0>
    <0,4,0>
    .2
        texture{
            pigment{
                Blue
            }
        }
    rotate <0,0,-125>
    translate <5,4,0>
}
  
  
  
cylinder{
    <0,0,0>
    <0,4,0>
    .2
    texture{
        pigment{
            Blue
        }
    }
    rotate <0,0,-225>
    translate <8,4,0>
} 

}


box{
    <7,0,-2>
    <9,5,6> 
    translate <-.3,0,-2>
}

} 



sphere{             //dot inside the flag
    <5.7,2.7,0>
    .3
    texture{
        pigment{
            Blue
        }
    }
}




cylinder{           //part of flag
    <0,0,0>
    <0,3,0> 
    .2
    rotate <0,0,-125>
    translate <5,1.5,0>
    texture{
        pigment{
            Blue
        }
    }
}




cylinder{            //part of flag
    <0,0,0>
    <0,3,0> 
    .2
    rotate <0,0,-65>
    translate <5,-1.5,0>
        texture{
            pigment{
                Blue
            }
        }
}



sphere{             //dot inside the flag
    <5.9,-.1,0>
    .3
    texture{
        pigment{
            Red
        }
    }
}


#declare sheet = 
box{
    <0,0,0>
    <3,.3,0>
        texture{
            pigment{
                Blue
            }
        }
};


object{
    sheet 
    translate <3.5,-3,0>
}
 

};



object{
    FLAG 
    //scale 8
    //translate <180,125,600>
    matrix<
        8,0,0,
        0,8,0,
        0,0,8,
        180,125,600
    >
}



 