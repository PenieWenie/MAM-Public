onEachFrame {
    {
        

		if (alive _x) then {        _x setVectorDirAndUp [vectorDir plane1,vectorUp plane1] ;
        _x setVelocity velocity plane1 ;};
    } forEach [plane2,plane3,plane4,plane5,plane6,plane7,plane8,plane9,plane10,plane11,plane12] ;
} ;


al_aaa = false;
publicVariable "al_aaa";


al_search_light = false;
publicVariable "al_search_light";

[] spawn { 
 
titleCut ["", "BLACK FADED", 999];sleep 1;["d-dayMemorial.ogv"] call BIS_fnc_playVideo; sleep 1;  titlecut [" ","BLACK IN",5];  
 
}; 

[] spawn { 
 
titleCut ["", "BLACK FADED", 999];sleep 1;["d-dayIntro.ogv"] call BIS_fnc_playVideo;  {_x moveincargo plane1} foreach allplayers; plane1 enableSimulationGlobal true; plane1 enableSimulationGlobal true;plane2 enableSimulationGlobal true;plane3 enableSimulationGlobal true;plane4 enableSimulationGlobal true;plane5 enableSimulationGlobal true;plane6 enableSimulationGlobal true;plane7 enableSimulationGlobal true;plane8 enableSimulationGlobal true;plane9 enableSimulationGlobal true;;plane10 enableSimulationGlobal true;;plane11 enableSimulationGlobal true;;plane12 enableSimulationGlobal true;;sleep 1;  titlecut [" ","BLACK IN",5];  
 addCamShake [5, 100, 3];    
}; 



[] spawn { 
 
titleCut ["", "BLACK FADED", 999];sleep 1;["d-dayMemorial.ogv"] call BIS_fnc_playVideo; sleep 1;  titlecut [" ","BLACK IN",5];  
 
}; 
 

