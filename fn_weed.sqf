/* 
2     File: fn_weed.sqf 
3     Author: Kuchiha 
4  
5     Description: 
6     Marijuana effects. 
7 */ 
8 
 
9 //Close inventory 
10 closeDialog 0; 
11 
 
12 //A User message and removed sleep function 
13 hint "420 Blaze it!"; 
14 
 
15 //Activate ppEffects we need 
16 "chromAberration" ppEffectEnable true; 
17 "radialBlur" ppEffectEnable true; 
18 enableCamShake true; 
19 _smoke = "SmokeShell" createVehicle position player; 
20 if (vehicle player != player) then 
21     { 
22         _smoke attachTo [vehicle player, [-0.6,-1,0]]; 
23     } 
24     else 
25     { 
26         _smoke attachTo [player, [0,-0.1,1.5]]; 
27     }; 
28      
29 //Let's go for 45secs of effetcs 
30 for "_i" from 0 to 155 do 
31 { 
32     "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true]; 
33     "chromAberration" ppEffectCommit 1;    
34     "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15]; 
35     "radialBlur" ppEffectCommit 1; 
36     addcamShake[random 3, 1, random 3]; 
37     sleep 1; 
38 }; 
39 
 
40 //Stop effects 
41 "chromAberration" ppEffectAdjust [0,0,true]; 
42 "chromAberration" ppEffectCommit 5; 
43 "radialBlur" ppEffectAdjust  [0,0,0,0]; 
44 "radialBlur" ppEffectCommit 5; 
45 sleep 6; 
46 
 
47 //Deactivate ppEffects 
48 "chromAberration" ppEffectEnable false; 
49 "radialBlur" ppEffectEnable false; 
50 resetCamShake; 
