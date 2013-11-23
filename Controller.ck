//Controller.ck 
//-------------
//This controller waits for keyboard input and triggers
//phrases based on that input. 

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

// BPM
class BPMEvent extends Event
{
    dur tempo;
}

BPMEvent bpm; 
Machine.add("BPM.ck") => int bpmShred;

//Events
Event proceed;


-1 => int currentPhrase; 

while(true){ 
    
    // wait on event
    hi => now;
    
    while( hi.recv( msg ) )
    {
        if( msg.isButtonDown() )
        {
            if(msg.ascii == spacebar){ 
               BPM => now; 
            } else if (msg.ascii == zero) { 
                me.exit(); 
            } else if (msg.ascii == one) { 
                proceed.broadcast(); 
            }  
        }
    } 
   
}//infinite loop

