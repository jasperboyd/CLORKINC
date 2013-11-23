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
50 => int two

// which keyboard
0 => int device;

// get from command line
if( me.args() ) me.arg(0) => Std.atoi => device;

// open keyboard (get device number from command line)
if( !hi.openKeyboard( device ) ) me.exit();

// BPM
Event BPM; 
Machine.add("BPM.ck") => int BPM;

while(true){ 
    
    //is the bpm changing
    
    //is the music proceeding
    
   
}//infinite loop

