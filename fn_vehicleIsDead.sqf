/* 
2 	File: fn_vehicleIsDead.sqf 
3 	Author: Kevin Webb 
4 	Description: 
5 	Used for the copCrush function: deletes the vehicle from the database. 
6 */ 
7 private["_vehicle","_plate","_uid","_query","_sql","_dbInfo","_thread"]; 
8 _vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; 
9 if(isNull _vehicle) exitWith {}; //NULL 
10 
 
11 _dbInfo = _vehicle getVariable["dbInfo",[]]; 
12 if(count _dbInfo == 0) exitWith {}; 
13 _uid = _dbInfo select 0; 
14 _plate = _dbInfo select 1; 
15 
 
16 _query = format["UPDATE vehicles SET alive='0' WHERE pid='%1' AND plate='%2'",_uid,_plate]; 
17 
 
18 waitUntil {!DB_Async_Active}; 
19 _thread = [_query,1] call DB_fnc_asyncCall; 
20 
 
21 
 
22 if(!isNil "_vehicle" && {!isNull _vehicle}) then { 
23 	deleteVehicle _vehicle; 
24 }; 
