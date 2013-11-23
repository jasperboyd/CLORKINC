//BPM.ck 
//-------------
//This waits for input from the spacebar and sets a global 
//tempo. 

// BPM
class BPMEvent extends Event
{
    dur tempo;
}

now => Time recent => Time beforeRecent; 

while(true){ 
    
    // wait on event
    hi => now;
    
    while(hi.recv( msg )){
        if(msg.isButtonDown() && msg.ascii == spacebar){
            if (recent != beforeRecent){
                
                //now => recent; 
               
                //recent - beforeRecent = tempo 
                
                //broadcast new tempo
                
            } else { 
                now => recent;  
                break; //leave the loop   
            }
        }
    } 
    
}//infinite loop 