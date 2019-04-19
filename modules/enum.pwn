enum pData {
    pID,
    pName[MAX_PLAYER_NAME],
    pPassword[65],
    pSalt[17],
    pMoney[2],
    pMoneyB[2],

    pAdmin,
    pHelper,

    bool: IsLoggedIn
}

enum {
    DIALOG_LOGIN,
    DIALOG_REGISTER
}
