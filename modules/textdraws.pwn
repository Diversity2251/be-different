function PlayerTextDraw(playerid) {
    Logo = CreatePlayerTextDraw(playerid, 636.000000, 429.333374, "NAME / SERVER.COM");
  	PlayerTextDrawLetterSize(playerid, Logo, 0.240000, 2.100000);
  	PlayerTextDrawAlignment(playerid, Logo, 3);
  	PlayerTextDrawColor(playerid, Logo, 0xFFFFFFFF);
  	PlayerTextDrawSetOutline(playerid, Logo, 1);
  	PlayerTextDrawBackgroundColor(playerid, Logo, 255);
  	PlayerTextDrawFont(playerid, Logo, 2);
  	PlayerTextDrawSetProportional(playerid, Logo, 1);
  	PlayerTextDrawSetSelectable(playerid, Logo, 0);

    ClockDate = CreatePlayerTextDraw(playerid,546.250000, 7.583334, "--");
    PlayerTextDrawFont(playerid,ClockDate,1);
    PlayerTextDrawLetterSize(playerid,ClockDate, 0.334374, 1.640833);
    PlayerTextDrawColor(playerid,ClockDate, -1);
    PlayerTextDrawSetOutline(playerid,ClockDate, 1);
    PlayerTextDrawBackgroundColor(playerid,ClockDate, 255);

    ClockTime = CreatePlayerTextDraw(playerid,546.250000, 20.416614, "--");
    PlayerTextDrawFont(playerid,ClockTime,1);
    PlayerTextDrawSetOutline(playerid,ClockTime, 1);
    PlayerTextDrawBackgroundColor(playerid,ClockTime, 255);
    PlayerTextDrawLetterSize(playerid,ClockTime, 0.618122, 2.387495);
    PlayerTextDrawColor(playerid,ClockTime, -1);
}
