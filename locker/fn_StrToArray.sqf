/*
    File: fn_StrToArray.sqf
    Author: Julian Bauer (julianbauer@cationstudio.com)

    Description:
    Code copied from KRON_Strings.sqf of Kronzky
*/
private ["_in","_i","_arr","_out"];
_in=_this select 0;
_arr = toArray(_in);
_out=[];
for "_i" from 0 to (count _arr)-1 do {
    _out=_out+[toString([_arr select _i])];
};
_out;