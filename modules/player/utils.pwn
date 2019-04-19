stock GivePlayerCash(playerid, money) {

    PlayerData[playerid][pMoney][0] += money/2;
    PlayerData[playerid][pMoney][1] += money/2;

    ResetPlayerMoney(playerid);
    GivePlayerMoney(playerid, money);

    gQuery[0] = (EOS);
  	mysql_format(g_SQL, gQuery, 256, "UPDATE `players` SET `money` = '%d', `money2` = '%d'  WHERE `id` = '%d' LIMIT 1", PlayerData[playerid][pMoney][0], PlayerData[playerid][pMoney][1], PlayerData[playerid][pID]);
  	mysql_tquery(g_SQL, gQuery);

    return true;
}

stock SetPlayerCash(playerid, money) {

    PlayerData[playerid][pMoney][0] = money/2;
    PlayerData[playerid][pMoney][1] = money/2;

    ResetPlayerMoney(playerid);
    GivePlayerMoney(playerid, money);

    gQuery[0] = (EOS);
  	mysql_format(g_SQL, gQuery, 256, "UPDATE `players` SET `money` = '%d', `money2` = '%d'  WHERE `id` = '%d' LIMIT 1", PlayerData[playerid][pMoney][0], PlayerData[playerid][pMoney][1], PlayerData[playerid][pID]);
  	mysql_tquery(g_SQL, gQuery);

    return true;
}
