//BPM.ck 
//-------------
//This waits for input from the spacebar and sets a global 
//tempo. 

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
            }
        }
    } 
    
}//infinite loop 