camera{
location <0,0,-500>
look_at <0,0,0>
}


light_source{
<0,0,-100>
rgb <1,1,1>
}


light_source{
<0,100,100>
rgb <1,1,1>
}


background{
rgb <1,1,1>
} 

#declare chineseBall = union{

#declare pen = mesh{
triangle{
<0,0,0>,
<0,3,0>,
<-1,3,0>
} 

triangle{
<0,0,0>,
<0,3,0>,
<1,3,0>
}

triangle{
<-1,3,0>,
<1,3,0>,
<1,9,0>
}

triangle{
<1,9,0>,  
<-1,3,0>,
<-1,9,0>
}

triangle{
<-1,6,0>,
<1,9,0>,
<2,10,0>
}

triangle{
<-1,9,0>,
<-2,10,0>,
<2,10,0>
}

triangle{
<2,10,0>,
<2,11,0>,
<-2,10,0>
} 

triangle{
<-2,10,0>,
<2,11,0>,
<-2,12,0>
} 


triangle{
<-2,12,0>,
<2,11,0>,
<1,12,0>
}

triangle{
<-2,12,0>,
<1,12,0>,
<-1,12,0>
}
};




object{
pen
texture{pigment{rgb <1,1,0>}}
} 



#declare index = 0;
#while (index<360)
object{
pen
rotate <index,0,0>
}
#declare index = index + 30;
#end


#declare index = 0;
#while (index<360)
object{
pen
rotate <0,0,index>
}
#declare index = index + 30;
#end



#declare index = 0;
#while (index<360)
object{
pen
rotate <0,index,0>
}
#declare index = index + 30;
#end
 

sphere{ <0,0,0>, 14
        texture { pigment{ color rgbt<1,1,0,0.7>}
                  finish { diffuse 0.9 phong 0.5}
                } 
        
      }
      
      };
      
     
         
         
  
      
   #declare index = 0; 
       #while(index<200)
      object{
      chineseBall
      translate <0,index,0>
      }                
      
      #declare index = index + 30;
      #end 
      
      
      cylinder{
      <0,0,0>
      <0,220,0>
      1 
      texture{pigment{rgb <1,1,0>}}
      }
      
      
      
     
      
       
      
      
      
      
      
      
      
       