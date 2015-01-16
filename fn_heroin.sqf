/* 
2     File: fn_heroin.sqf 
3     Author: 
4  
5     Description: 
6     Heroin Effect 
7 */ 
8 
 
9 //Close inventory 
10 closeDialog 0; 
11 
 
12 //A User message and removed sleep function 
13 hint "I like flowers!"; 
14 
 
15 //Activate ppEffects we need 
16 "chromAberration" ppEffectEnable true; 
17 "radialBlur" ppEffectEnable true; 
18 enableCamShake true; 
19 
 
20 //Let's go for 45secs of effetcs 
21 for "_i" from 0 to 44 do 
22 { 
23     "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true]; 
24     "chromAberration" ppEffectCommit 1;    
25     "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15]; 
26     "radialBlur" ppEffectCommit 1; 
27     addcamShake[random 3, 1, random 3]; 
28     sleep 1; 
29 }; 
30 
 
31 //Stop effects 
32 "chromAberration" ppEffectAdjust [0,0,true]; 
33 "chromAberration" ppEffectCommit 5; 
34 "radialBlur" ppEffectAdjust  [0,0,0,0]; 
35 "radialBlur" ppEffectCommit 5; 
36 sleep 6; 
37 
 
38 //Deactivate ppEffects 
39 "chromAberration" ppEffectEnable false; 
40 "radialBlur" ppEffectEnable false; 
41 resetCamShake; 
42 
 
