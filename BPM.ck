//BPM.ck 
//-------------
//This waits for input from the spacebar and sets a global 
//tempo. 

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
class TempoEvent extends Event
{
    dur tempo;
}

TempoEvent bpm; 

