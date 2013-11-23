//BPM.ck 
//-------------
//This waits for input from the spacebar and sets a global 
//tempo. 

now => Time recent => Time beforeRecent; 

while(true){ 
    
    // wait on event
    hi => now;
    
    while( hi.recv( msg ) )
    {
        if( msg.isButtonDown() )
        {
            if(msg.ascii == spacebar){ 
                if (recent != beforeRectent){
                    
                } else { 
                    
                }
            } 
        }
    } 
    
}//infinite loop 