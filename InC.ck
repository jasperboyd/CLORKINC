//InC.ck 
//------
//Contains the phrases of InC 
//played by a number of different instruments. 

// NOTES
48 => int c3;     60 => int c4;     72 => int c5;     84 => int c6;
49 => int d3b;    61 => int d4b;    73 => int d5b;    85 => int d6b;
50 => int d3;     62 => int d4;     74 => int d5;     86 => int d6;
51 => int e3b;    63 => int e4b;    75 => int e5b;    87 => int e6b;
52 => int e3;     64 => int e4;     76 => int e5;     88 => int e6;
53 => int f3;     65 => int f4;     77 => int f5;     89 => int f6;
54 => int g3b;    66 => int g4b;    78 => int g5b;    90 => int g6b;
55 => int g3;     67 => int g4;     79 => int g5;     91 => int g6;
56 => int a3b;    68 => int a4b;    80 => int a5b;    92 => int a6b;
57 => int a3;     69 => int a4;     81 => int a5;     93 => int a6;
58 => int b3b;    70 => int b4b;    82 => int b5b;    94 => int b6b;
59 => int b3;     71 => int b4;     83 => int b5;     95 => int b6;

0 => rest; 

// RHYTHMS

//Default 60 BPM 
1::second => dur quarter;
beat*2 => dur half; 
beat*4 => dur whole; 
beat*8 => dur doubleWhole;
beat/2 => dur eighth; 
beat/4 => dur sixteenth; 
//grace
beat/8 => dur thirtySecond => dur grace; 
quarter - thirtySecond => dur quarterShort; 
beat/16 => dur sixtyForth;
//dotted
whole + half => dur dWhole;
half + quarter => dur dHalf; 
quarter + eighth => dur dQuarter;
eighth + sixteenth => dur dEighth;
sixteenth + thirtySecond => dur dSixteenth;

// sound chain

fun void inC1 () { 
    while (true) { 
        
        SinOsc phrase1 => dac;
        
        //number of beats (example: 4 bars)
        6 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        c3 => notes[0];
        e3 => notes[1];
        c3 => notes[2];
        e3 => notes[3];
        c3 => notes[4];
        e3 => notes[5];
        
        grace => rhythm[0]; 
        quarterShort => rhythm[1]; 
        grace => rhythm[2]; 
        quarterShort => rhythm[3]; 
        grace => rhythm[4]; 
        quarterShort => rhythm[5]; 
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase1.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC2 () { 
    while (true) { 
        
        SinOsc phrase2 => dac;
        
        //number of beats (example: 4 bars)
        4 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        c3 => notes[0];
        e3 => notes[1];
        f3 => notes[2];
        e3 => notes[3];

        
        grace => rhythm[0]; 
        eighth => rhythm[1]; 
        eighth => rhythm[2]; 
        quarterShort => rhythm[3]; 

        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase2.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC3 () { 
    while (true) { 
        
        SinOsc phrase3 => dac;
        
        //number of beats (example: 4 bars)
        4 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        rest => notes[0];
        e3 => notes[1];
        f3 => notes[2];
        e3 => notes[3];
        
        
        eighth => rhythm[0]; 
        eighth => rhythm[1]; 
        eighth => rhythm[2]; 
        eighth => rhythm[3]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase3.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC4 () { 
    while (true) { 
        
        SinOsc phrase4 => dac;
        
        //number of beats (example: 4 bars)
        4 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        rest => notes[0];
        e3 => notes[1];
        f3 => notes[2];
        g3 => notes[3];
        
        
        eighth => rhythm[0]; 
        eighth => rhythm[1]; 
        eighth => rhythm[2]; 
        eighth => rhythm[3]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase4.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC5 () { 
    while (true) { 
        
        SinOsc phrase5 => dac;
        
        //number of beats (example: 4 bars)
        4 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        e3 => notes[0];
        f3 => notes[1];
        g3 => notes[2];
        rest => notes[3];
        
        
        eighth => rhythm[0]; 
        eighth => rhythm[1]; 
        eighth => rhythm[2]; 
        eighth => rhythm[3]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase5.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC6 () { 
    while (true) { 
        
        SinOsc phrase6 => dac;
        
        //number of beats (example: 4 bars)
        1 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        c4 => notes[0];
        
        
        doubleWhole => rhythm[0]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase6.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC7 () { 
    while (true) { 
        
        SinOsc phrase7 => dac;
        
        //number of beats (example: 4 bars)
        6 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        rest => notes[0];
        rest => notes[1];
        c3 => notes[2];
        c3 => notes[3];
        c3 => notes[4];
        rest => notes[5];
        rest => notes[6];
        
        
        half => rhythm[0]; 
        dQuarter => rhythm[1]; 
        eighth => rhythm[2]; 
        eighth => rhythm[3]; 
        eighth => rhythm[4];
        eighth => rhythm[5];
        whole => rhythm [6];
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase7.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC8 () { 
    while (true) { 
        
        SinOsc phrase8 => dac;
        
        //number of beats (example: 4 bars)
        2 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        g3 => notes[0];
        f3 => notes[1];
        
        dWhole => rhythm[0];
        doubleWhole => rhythm[1]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase8.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC9 () { 
    while (true) { 
        
        SinOsc phrase9 => dac;
        
        //number of beats (example: 4 bars)
        4 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        b3 => notes[0];
        g3 => notes[1];
        rest => notes[2];
        rest => notes[3];
        
        sixteenth => rhythm[0]; 
        sixteenth => rhythm[1]; 
        eighth => rhythm[2]; 
        dHalf => rhythm[3]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase9.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC10 () { 
    while (true) { 
        
        SinOsc phrase10 => dac;
        
        //number of beats (example: 4 bars)
        2 => int numberOfNotes;  
        
        //array of notes in
        int notes[numberOfNotes];
        int rhythms[numberOfNotes];
        
        b3 => notes[0];
        g3 => notes[1];
        
        sixteenth => rhythm[0]; 
        sixteenth => rhythm[1]; 
        
        
        
        for (0 => int i; i<numberOfNotes; i++){
            
            //play the tune
            phrase10.freq().mtof(notes[i); 
            
            rhythms[i] => now; 
            
        }
        
        hi=>now;
        
        //If any key is pressed exit the loop
        if (msg.buttonIsDown()) { 
            break; 
        }
    }
}

fun void inC11 () { 
    //implement
}

fun void inC12 () { 
    //implement
}

fun void inC13 () {
    //implement
}

fun void inC14 () { 
    //implement
}

fun void inC15 () { 
    //implement
}

fun void inC16 () { 
    //implement
}

fun void inC17 () { 
    //implement
}

fun void inC18 () { 
    //implement
}

// global variables
[ 60, 62, 63, 65, 63, 64, 65, 58, 57 ] @=> int A[];


// MAIN PROGRAM
// loop
for( 0 => int i; i < A.cap(); i++ )
{
    Std.mtof( A[ i ] ) => s.freq; // sets freq using array A
    1::second => now; // compute audio for 1 second
} 


