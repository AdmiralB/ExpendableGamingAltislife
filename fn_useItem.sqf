case (_item == "marijuana"): 
2 { 
3     if(([false,_item,1] call life_fnc_handleInv)) then 
4     { 
5         [] spawn life_fnc_weed; 
6     }; 
7 }; 
8 
 
9 case (_item == "cocainep"): 
10 { 
11     if(([false,_item,1] call life_fnc_handleInv)) then 
12     { 
13         [] spawn life_fnc_cocaine; 
14     }; 
15 }; 
16 
 
17 case (_item == "heroinp"): 
18 { 
19     if(([false,_item,1] call life_fnc_handleInv)) then 
20     { 
21         [] spawn life_fnc_heroin; 
22     }; 
23 }; 
