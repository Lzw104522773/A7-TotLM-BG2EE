BEGIN ~DHARPY~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @27472
  IF ~~ THEN REPLY @27497 GOTO 1
  IF ~~ THEN REPLY @27498 GOTO 1
  IF ~~ THEN REPLY @10717 GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @27474
  IF ~~ THEN DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27491
  IF ~~ THEN REPLY @27500 GOTO 1
  IF ~~ THEN REPLY @27501 GOTO 1
  IF ~~ THEN REPLY @27499 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @27492
  IF ~  !Alignment(LastTalkedToBy,MASK_GOOD)
~ THEN REPLY @27503 GOTO 1
  IF ~~ THEN REPLY @27504 GOTO 4
  IF ~~ THEN REPLY @27505 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @27493
  IF ~  GlobalGT("ID#Know_Luremaster","GLOBAL",0)
~ THEN REPLY @27506 GOTO 5
  IF ~~ THEN REPLY @27507 GOTO 5
  IF ~  GlobalGT("SPRITE_IS_DEADID#Wyvern","GLOBAL",0)
~ THEN REPLY @27508 GOTO 6
  IF ~~ THEN REPLY @27509 GOTO 1
END

IF ~~ THEN BEGIN 5
  SAY @27494
  IF ~~ THEN REPLY @27510 GOTO 7
  IF ~~ THEN REPLY @27511 GOTO 1
  IF ~  !Alignment(LastTalkedToBy,MASK_GOOD)
~ THEN REPLY @27512 GOTO 1
END

IF ~~ THEN BEGIN 6
  SAY @27495
  IF ~~ THEN REPLY @27513 GOTO 5
  IF ~~ THEN REPLY @27514 GOTO 5
  IF ~~ THEN REPLY @27515 GOTO 1
END

IF ~~ THEN BEGIN 7
  SAY @27496
  IF ~~ THEN REPLY @27516 GOTO 1
  IF ~~ THEN REPLY @27517 GOTO 1
  IF ~  !Alignment(LastTalkedToBy,MASK_GOOD)
~ THEN REPLY @27518 GOTO 1
END