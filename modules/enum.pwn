enum pData {
    pID,
    pName[MAX_PLAYER_NAME],
    pPassword[65],
    pSalt[17],

    bool: IsLoggedIn
}

enum {
    DIALOG_LOGIN,
    DIALOG_REGISTER
}
