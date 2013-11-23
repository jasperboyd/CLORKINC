//InC.ck 
//------
//Contains the phrases of InC 
//played by a number of different instruments. 

class TempoEvent extends Event
{
    dur tempo;
}

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