//BPM.ck 
//-------------
//This waits for input from the spacebar and sets a global 
//tempo. 

// BPM
class TempoEvent extends Event
{
    dur tempo;
}

TempoEvent bpm; 

now => Time recent => Time beforeRecent; 

while(true){ 
    
    // wait on event
    hi => now;
    
    while(hi.recv( msg )){
        if(msg.isButtonDown() && msg.ascii == spacebar){
            if (recent != beforeRecent){
                
                now => recent; 
                
                recent - beforeRecent => bpm.tempo;
                
                bpm.broadcast(); 
                
                break; 
                
            } else { 
                now => recent;  
                break; //leave the loop   
            }
        }
    }   
}//infinite loop 