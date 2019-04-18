

public OnGameModeInit() {
    MySQL_Init();

    return true;
}

public OnGameModeExit() {
    MySQL_Exit();

    return true;
}

public OnPlayerConnect(playerid) {
    MySQL_Check(playerid, false);

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
