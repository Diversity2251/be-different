
YCMD:makeadmin(playerid, params[], help) {

    if(PlayerData[playerid][pAdmin] < 6) return SendClientMessage(playerid, -1, "You do not have access to this command");
    // I'm tired, sorry
    return true;
}
