//Controller.ck 
//-------------
//This controller waits for keyboard input and triggers
//phrases based on that input.

class TempoEvent extends Event
{
    dur tempo;
} 

//Events
Event proceed;
TempoEvent bpm; 
TempoEvent globalTempoEvent; 

// KEYBOARD
Hid hi;
HidMsg msg;

// ASCII Values
32 => int spacebar; 
48 => int zero; 
49 => int one; 

// which keyboard
0 => int device;

// get from command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// open keyboard (get device number from command line)
if( !hi.openKeyboard( device ) ) me.exit();

fun void bpmCounter (TempoEvent bpmEvent) {
    
    //Init history feature
    dur history[10]; 
    
    0 => int historyCounter;
    
    now => time recent => time beforeRecent; 
    
    while(true){ 
        
        // wait on event
        hi => now;
        
        while(hi.recv( msg )){
            
            if(msg.isButtonDown() && msg.ascii == spacebar){
                <<<"Spacebar">>>;   
                
                if (recent != beforeRecent){
                    recent => beforeRecent;     
                    now => recent; 
                    <<<"beforeRecent = ", beforeRecent>>>; 
                    <<<"Recent = ", recent>>>; 
                    recent - beforeRecent => history[historyCounter++];
                    if (historyCounter == 10){
                        0 => historyCounter;
                    }
                    dur answer; 
                    for (0 => int i; i < historyCounter; i++){
                        answer + history[i] => answer; 
                    }
                    if (historyCounter == 0) {
                        history[historyCounter]                       => answer; 
                    }else { 
                        answer / historyCounter => answer; 
                    }
                    
                    answer => bpm.tempo;
                    <<<"bpm.tempo = ", bpm.tempo>>>; 
                    bpm.signal();                           
                } else { 
                    now => recent;  
                    //break; //leave the loop   
                }
            }
        }   
    }//infinite loop    
}//bpmCounter

spork ~ bpmCounter(bpm);                            

1::second => globalTempoEvent.tempo;//default to 60

while(true){ 
    
    // wait on event
    hi => now;
    
    while( hi.recv( msg ) )
    {
        if( msg.isButtonDown() )
        {
            if(msg.ascii == spacebar){ 
               bpm => now; 
               <<<"bpm event now!">>>;           
               bpm.tempo => globalTempoEvent.tempo;
               <<<"globalTempoEvent.tempo = ", globalTempoEvent.tempo>>>;
               globalTempoEvent.broadcast(); 
                     
            } else if (msg.ascii == zero) { 
                me.exit(); 
            } else if (msg.ascii == one) { 
                proceed.broadcast(); 
                break; 
            }  
        }
    } 
   
}//infinite loop

