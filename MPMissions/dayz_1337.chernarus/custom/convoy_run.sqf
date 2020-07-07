sleep 120;
donn_show_alert = true;
"cad_pvar_spositions" addPublicVariableEventHandler {
    _nearCasca = false;
    _countCasca = 0;
    _min = 400;
    {
        _dist = _x distance player;
        if (_dist < 400) then {
            _nearCasca = true;
            _countCasca = _countCasca + 1;
            _min = _min min _dist;
        };
    } forEach (_this select 1);
    if (_nearCasca && donn_show_alert) then {
        if (_countCasca > 1) then {
            systemChat format ["Near %1 Casca units (min. %2/400 m).",_countCasca, round _min];
        } else {
            systemChat format ["Near %1 Casca unit (min. %2/400 m).",_countCasca, round _min];
        };
        donn_show_alert = false;
        [] spawn {
            sleep 15;
            donn_show_alert = true;
        };
    };
};