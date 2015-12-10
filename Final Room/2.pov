#include "textures.inc" 
#include "colors.inc"
#include "PigmentMap"
#include "CHAIR.inc"
#include "TABLE.inc" 
#include "Laptop.inc"
#include "FLAG.inc"         // this is the flag of Nepal 
#include "sword.inc"
#include "fan.inc"          // if you want to see room through fan than see through different camera positions such as "FanView", "ViewFromFan1" and so on..... 
#include "CoffeeCup.inc"
#include "tubelight.inc"   // switch on the tubelight by including this file.
//#include "candle.inc"      // light the candle if you want to see the room glowing with this light (and don't forget to turn off the tubelight if you want to see effect of candle). 
#include "footBall.inc"         
#include "mirror.inc"     // if you want to see the effect of mirror than see through camera "viewFromcamera1" (where the image of Steve Jobs is reflecting through mirror). 
#include "dumbel.inc" 
#include "poster.inc"     // if you want to see the picture of Steve Jobs than glance through the camera "picachuTostevejob" (where you will not only see Steve jobs but also his quote).  
#include "bed.inc"
#include "dustBin.inc" 
#include "MESH.inc"      // if you want to see Keyring hanging in the door containing Chineseball (which also contains mesh on it) than see through the camera angle "TowardsWindowCameraPos". 
#include "picachu.inc"   // if you want to enjoy the picture of Picacahu than see through camera angle "steveJobstopicachu"  






//Room Textures
#declare WallTexture = texture {
    pigment {
        White
    }
};



#declare RoomWidth = 500; 
#declare RoomLength = 650; 
#declare RoomHeight = 300;
#declare HalfRoomWidth = RoomWidth/2;
#declare HalfRoomLength = RoomLength/2;
#declare HalfRoomHeight = RoomHeight/2;




#declare MyFlagPos = <HalfRoomWidth, 100, 30>;
#declare SadipPos = <HalfRoomWidth,100,RoomLength-30>; 
#declare FanPos = <0,262,270>; 
#declare steveJobspos = <495,150,275>;
#declare picachuPos = <5,90,160>;

#declare BackWindowCameraPos = camera{
    location <HalfRoomWidth,RoomHeight,-RoomLength>
    look_at MyFlagPos
    //angle 55
    focal_point <0,0,0>
    aperture .4
    blur_samples 40   
};


#declare FrontWindowCameraPos = camera{
    location SadipPos
    look_at <HalfRoomWidth,100,HalfRoomLength> 
	translate <0,30,0>
};
	
	
#declare TowardsDoorCameraPos = camera{
    location <HalfRoomWidth,HalfRoomHeight,RoomLength*2> 
    look_at SadipPos
    angle 95  
}; 

#declare TowardsWindowCameraPos = camera{
    location MyFlagPos
    look_at <HalfRoomWidth,100,HalfRoomLength>
    translate <0,100,0>
};
                                

#declare cameraOntable = camera{
    perspective
    location MyFlagPos
    look_at <HalfRoomWidth,100,HalfRoomLength>
    angle 95
    focal_point SadipPos
    aperture .4
    blur_samples 100
    translate <0,100,0> 
};

	
#declare ViewFromFan1 = camera{
    location <0,262,280>
    look_at MyFlagPos 
    };
   
   
#declare ViewFromFan2 = camera{
    perspective
    location <20,272,250>
    look_at SadipPos
};
   
   
#declare CornerView = camera{
    location <0,100,600>
    look_at <400,210,200>
};  
   
   
   
   
#declare FanView = camera{
    perspective
    location <-60,280,290>
    look_at  <160,280,290>
    angle 95
    focal_point FanPos
    aperture .6
    blur_samples 70
};
   
   
#declare ViewToFlag = camera{
    perspective
    location <500,210,550>
    look_at SadipPos
    angle 60
    focal_point SadipPos
    aperture .4
    blur_samples 40 
};
                      

#declare steveJobstopicachu = camera{
    location steveJobspos
    look_at picachuPos
};
   
   
#declare picachuTostevejobs = camera{ 
    location picachuPos
    look_at steveJobspos
}; 


#declare RimLight = light_source{       //light is behind object or opposite to the camera
    <HalfRoomWidth,RoomHeight,RoomLength*3>
    White*2.5
    spotlight 
    radius 30
    tightness 0 
    point_at MyFlagPos
}; 
                         
                      
                      
   
camera{
    //picachuTostevejobs                        // viewing from Picachu position to Steve Jobs Position  
    //steveJobstopicachu                        // Viewing from Steve Jobs position to Picachu Positin
    //BackWindowCameraPos translate <100,0,0>   // Viewing from the window into the room
    //ViewFromFan2                              // looks at dustbin and flag
    //CornerView                                // Viewing to Steve Jobs poster from corner 
    //FanView                                   // Viewing from fan towards poster 
    ViewFromFan1                              // View towards mirror from fan
    //ViewToFlag                                // blur picture  
    //FrontWindowCameraPos                      // Viewing toawrds window 
    //TowardsDoorCameraPos                      // door view from far distance
    //TowardsWindowCameraPos                    // Viewing flag and dustbin 
    //cameraOntable                             // Some change in angles and blur...
}





/*sky_sphere{
    pigment{ gradient <0,1,0>
            color_map{
                    [0.00 color rgb<0.24,0.32,1> *0.3]
                    [0.23 color rgb<0.16,0.32,0.9> *0.9]
                    [0.37 color rgb<1,0.1,0> ]
                    [0.52 color rgb<1,0.2,0> ]
                    [0.70 color rgb<0.36,0.32,1> *0.7 ]
                    [0.80 color rgb<0.14,0.32,1> *0.5 ]
                    [1.00 color rgb<0.24,0.32,1> *0.3 ]
            } 
        scale 2
        rotate <-20,0,0>
        translate <0,0.7,0>
    } 
}*/ 




/*
sky_sphere{
    pigment{
        gradient <0,1,0>
            color_map{
                [0 color White] 
                [0.4 color rgb <0.14,0.14,0.56>]
                [0.6 color rgb <0.14,0.14,0.56>]
                [1.0 color White]
            }
      scale 2
    }
} */
 
/*
light_source {//frontwindowlight
    <HalfRoomWidth,100,HalfRoomLength>
    rgb <1,1,1>*.2
} */

/*
light_source{ //leftsidecamera
    <-100,264,270>
    rgb<1,1,1>
} 
  */




//light_source{RimLight}

  
  
#declare holeForfan = sphere{
    <0,0,0>
    2.5
};
  



#declare Floor = box{
    <0,-0.01,0>
    <RoomWidth,1,RoomLength>
        pigment{
            image_map{
                jpeg "carpet.jpg"
            } scale 5 
        }                
};



#declare Room = box{
    <0,0,0>
    <RoomWidth,RoomHeight,RoomLength>
    texture{
        pigment{
            White
                }
        }
};  



#declare Windows = 

union{

#declare WindowHeight = 150;
#declare HalfWindowHeight = WindowHeight/2;
#declare WindowDistanceFromGround = 110;
#declare WindowFullHeight = RoomHeight - WindowDistanceFromGround;
#declare WindowCutout = box {
    <RoomWidth*(2/3)+5,0,-16>
	<RoomWidth,WindowFullHeight,16>
	translate <0,WindowDistanceFromGround,0>
};



#declare DoorHeight = 280;
#declare DoorWidth = 110;
#declare DoorThickness = 150; 
#declare DoorDistanceFromWall = 180;
#declare DoorCutOut = box{
	<0,0.01,-DoorThickness>
	<DoorWidth,DoorHeight,DoorThickness>
	translate <RoomWidth-DoorDistanceFromWall,0,RoomLength> 
};




object{
       WindowCutout 
      } 


object{
       WindowCutout 
       translate <-RoomWidth*(2/3)+55,0,0>
       }
};











difference {
    object {
	    Room
		scale 1.1
		translate <-1,-1,-1>
		    texture{
                pigment{
                    brick
                    color Blue*0.9     
                    color rgb<0.8,0.25,0.1>*6 
                    brick_size <0.08, 0.06, 1>
                    mortar 0.01 
                } 
                scale 450 

            }
    }
	
	object {
	    Room
    }
	
	object {
	    Windows
	} 
	
	object{
	    DoorCutOut
	}
	
	object{
	    holeForfan
        scale 18   
        translate <0,264,270>
	} 
	
	object{
	    Floor
	}
	
	texture { 
	    WallTexture
    }
}





