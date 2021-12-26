/*
    File: fn_getText.sqf
    Author: Julian Bauer (julianbauer@cationstudio.com)

    Description:
    Returns text from config.
*/
private _configText = param [0,"",[""]];
private _text = getText(missionConfigFile >> "Cation_Locker" >> "language" >> language >> _configText);
if (_text isEqualTo "") then {
    private _default = getText(missionConfigFile >> "Cation_Locker" >> "language" >> "defaultLanguage");
	_text = getText(missionConfigFile >> "Cation_Locker" >> "language" >> _default >> _configText);
};
_text;