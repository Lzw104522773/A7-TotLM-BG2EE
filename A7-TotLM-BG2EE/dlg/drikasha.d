BEGIN ~DRIKASHA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @27038
  IF ~~ THEN REPLY @27039 GOTO 1
  IF ~~ THEN REPLY @27040 GOTO 7
  IF ~~ THEN REPLY @27041 GOTO 13
  IF ~~ THEN REPLY @27043 GOTO 23
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @27045
  IF ~~ THEN REPLY @27046 DO ~AddJournalEntry(@27047,QUEST)
~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @27048
  IF ~~ THEN REPLY @27049 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @27050
  IF ~  CheckStatGT(LastTalkedToBy,11,INT)
~ THEN REPLY @27051 GOTO 4
  IF ~  CheckStatLT(LastTalkedToBy,12,INT)
~ THEN REPLY @27052 GOTO 5
END

IF ~~ THEN BEGIN 4
  SAY @27053
  IF ~~ THEN REPLY @27054 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @27055
  IF ~~ THEN REPLY @27054 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @27058
  IF ~~ THEN REPLY @27060 GOTO 7
  IF ~~ THEN REPLY @27041 GOTO 13
  IF ~~ THEN REPLY @27043 GOTO 23
  IF ~~ THEN REPLY @25784 DO ~StartStore("Rikasha",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @27064
  IF ~~ THEN REPLY @27065 DO ~SetGlobal("ID#Know_Game","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @27067
  IF ~~ THEN REPLY @18915 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @27069
  IF ~~ THEN REPLY @27070 DO ~SetGlobal("ID#Know_Hobart_lackey","GLOBAL",1)
AddJournalEntry(@27071,QUEST)
~ GOTO 10
  IF ~~ THEN REPLY @27041 GOTO 13
END

IF ~~ THEN BEGIN 10
  SAY @27073
  IF ~~ THEN REPLY @27074 DO ~AddJournalEntry(@27077,QUEST)
~ GOTO 11
  IF ~~ THEN REPLY @27041 GOTO 13
END

IF ~~ THEN BEGIN 11
  SAY @27076
  IF ~~ THEN REPLY @27082 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @27083
  IF ~~ THEN REPLY @27088 GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @27089
  IF ~~ THEN REPLY @27090 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @27091
  IF ~~ THEN REPLY @7857 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @27095
  IF ~~ THEN REPLY @8660 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @27100
  IF ~~ THEN REPLY @27101 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @27102
  IF ~~ THEN REPLY @27103 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @27104
  IF ~~ THEN REPLY @27105 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @27106
  IF ~~ THEN REPLY @27108 GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @27109
  IF ~~ THEN REPLY @27110 DO ~SetGlobal("ID#Know_Portal","GLOBAL",1)
~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @27112
  IF ~~ THEN REPLY @27113 DO ~AddJournalEntry(@27114,QUEST)
~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @27115
  IF ~~ THEN REPLY @1711 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @27117
  IF ~~ THEN REPLY @27118 DO ~RestPartyEx(0,0,FALSE)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24
  SAY @27119
  IF ~~ THEN REPLY @2556 GOTO 1
  IF ~  GlobalLT("ID#Know_Game","GLOBAL",1)
~ THEN REPLY @27121 GOTO 7
  IF ~  GlobalLT("ID#Know_Portal","GLOBAL",1)
~ THEN REPLY @27041 GOTO 13
  IF ~~ THEN REPLY @25784 DO ~StartStore("Rikasha",LastTalkedToBy)
~ EXIT
  IF ~~ THEN REPLY @27043 GOTO 23
  IF ~~ THEN REPLY @1711 EXIT
END
