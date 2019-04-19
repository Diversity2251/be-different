
task OneSecTimer[1000]() {
    new hour, minutes, seconds, day, month, year;

    gettime(hour, minutes, seconds);
    getdate(year, month, day);

    gString[0] = (EOS); gQuery[0] = (EOS);

    format(gString, 128, "%02d:%02d", hour, minutes);
    format(gQuery, 128, "%02d/%02d/%d", day, month, year);

    foreach(new i : Player) {
        PlayerTextDrawSetString(i, ClockTime, gString);
        PlayerTextDrawSetString(i, ClockDate, gQuery);
    }
}
