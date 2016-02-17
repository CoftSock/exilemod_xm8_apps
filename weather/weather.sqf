//MADE BY COFTSOCK FOR EXILE MOD XM8 APPS//
private ["_name","_town","_worldname","_fog","_fogf","_winddirection","_windstrength","_gusts","_rain","_humidity","_vd","_ovd","_shadowdistance","_wchange"];
_name = profileName;
_fogf = fogForecast;
_wchange = nextWeatherChange;
_gusts = gusts;
_vd = viewDistance;
_ovd = getObjectViewDistance;
_fog = fog;
_humidity = humidity;
_shadowdistance = getShadowDistance;
_windstrength = windStr;
_worldname = worldName;
_rain = rain;
_player = getPos player nearestObject "Man";
_closesttown = (nearestLocations [getPosATL _player,["NameCityCapital","NameCity","NameVillage","NameMarine"],10000]) select 0;
_town = text _closesttown;
_winddirection = windDir;
_lightning = lightnings;
_rainbow = rainbow; 
_surf = waves;
_surface = surfaceType position player;
_overcast = overcast;
_overcastf = overcastForecast;
_hour = floor daytime;
_minute = floor ((daytime - _hour) * 60);
_second = floor (((((daytime) - (_hour))*60) - _minute)*60);
_time24 = text format ["%1:%2:%3",_hour,_minute,_second];
	
hintSilent parseText format ["
<t size='1' font='TahomaB' align='center' color='#EAD453'>%1</t><br/><br/>
<t size='1' font='TahomaB' align='center' color='#EAD453'>%20</t><br/><br/>
<t size='1' font='TahomaB' align='center' color='#EAD453'>The Weather for %2, %3 is:</t><br/><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Fog:</t><t size='1' font='TahomaB' align='right' color='#699D1A'>%4</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Fog Forecasted:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%5</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Wind Direction:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%6</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Wind strength:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%7</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Wind gusts:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%8</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Rain:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%9</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Humidity:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%10</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>View Distance:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%11</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Object View Distance:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%12</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Shadow distance:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%13</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Overcast:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%14</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Overcast forecast:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%15</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Rainbow:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%16</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Surf:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%17</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Surface:</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%18</t><br/>
<t size='1' font='TahomaB' align='left' color='#3399FF'>Weather change in</t><t size='1'font='TahomaB' align='right' color='#699D1A'>%19 mins</t><br/><br/>
<t size='1' font='TahomaB' align='center' color='#EAD453'>%3weather.xm8</t><br/><br/>",
_name,
_town,
_worldname,
_fog,
_fogf,
(round (_winddirection)),
_windstrength,
_gusts,
_rain,
_humidity,
_vd,
_ovd,
_shadowdistance,
_overcast,
_overcastf,
_rainbow,
_surf,
_surface,
(round(_wchange)/60),
_time24
];
