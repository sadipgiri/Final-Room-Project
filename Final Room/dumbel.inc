
  
  
#declare Dumbel = blob {
    threshold .65
    sphere { 
        <.5,0,0>, 
        .8, 
         1 
    }
    sphere { 
        <-.5,0,0>,
        .8, 
        1 
    }
    finish { 
    phong 1 
    } 
};
  
  
  
object{
    Dumbel
        pigment{
            rgb<0.5,0.5,0.5>
        }
   
    matrix<  
        30,0,0,
        0,30,0
        0,0,30
        300,9,25
  >
}