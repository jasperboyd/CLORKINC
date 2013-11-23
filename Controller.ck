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

// BPM
Machine.add("BPM.ck") => int bpmShred;

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
               bpm.tempo => globalTempoEvent.tempo;
               globalTempoEvent.broadcast(); 
               break;
            } else if (msg.ascii == zero) { 
                me.exit(); 
            } else if (msg.ascii == one) { 
                proceed.broadcast(); 
                break; 
            }  
        }
    } 
   
}//infinite loop

