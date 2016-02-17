//MADE BY COFTSOCK FOR EXILE MOD XM8 APPS//
_Poptabs = 300;
ExileClientPlayerMoney = ExileClientPlayerMoney - _Poptabs;
_vehicle = getPos player nearestObject "Car","Truck","Air","Support","Ship","Armored";
_vehDisplayName = gettext (configFile >> "CfgVehicles" >> (typeof _vehicle) >> "displayName");
hint format ["Tracking %1", _vehDisplayName];
_marker_name = "marker" + str _vehicle;		 
_marker  =  createMarkerlocal [_marker_name , getPosASL _vehicle];
_marker setMarkerType "Select"; 
_marker setMarkerColor "ColorBlue"; 
_marker setMarkerText format ["%1", _vehDisplayName];
 while {alive _vehicle} do { 
_marker setMarkerPos getpos _vehicle; 
};
