

public OnGameModeInit() {
    MySQL_Init();

    gString[0] = (EOS);
    format(gString, 50, "BE-DIFF %s", gamemode_version);
  	SetGameModeText(gString);

    DisableInteriorEnterExits();
    ShowPlayerMarkers(0);
  	EnableStuntBonusForAll(0);
  	ManualVehicleEngineAndLights();
  	UsePlayerPedAnims();

    return true;
}

public OnGameModeExit() {
    MySQL_Exit();

    return true;
}

public OnPlayerConnect(playerid) {
    MySQL_Check(playerid, false);

    PlayerTextDraw(playerid);

    gString[0] = (EOS);
    format(gString, 100, "(%d) %s / SERVER.COM", playerid, GetName(playerid));
    PlayerTextDrawSetString(playerid, Logo, gString);
    PlayerTextDrawShow(playerid, Logo);

    PlayerTextDrawShow(playerid, ClockTime);
  	PlayerTextDrawShow(playerid, ClockDate);

    return true;
}

public OnPlayerDisconnect(playerid, reason) {
    MySQL_Check(playerid, true);

    return true;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    switch(dialogid) {
        case DIALOG_REGISTER: Dialog_RegLog(playerid, true, response, inputtext);
        case DIALOG_LOGIN: Dialog_RegLog(playerid, false, response, inputtext);
        default: return true;
    }
    return true;
}

public OnPlayerRequestClass(playerid, classid) {
    if(!PlayerData[playerid][IsLoggedIn]) SetSpawnInfo(playerid, 4, 184, 1935.6049,-1276.0818,31.0801, 182.0, 0, 0, 0, 0, 0, 0);
    else SetSpawnInfo(playerid, 4, 184, 1935.6049,-1276.0818,31.0801, 182.0, 0, 0, 0, 0, 0, 0);

    SpawnPlayer(playerid);
}
