10 REM GLOBAL VARS
20 LENGTH=0

100 REM MAIN
110 GOSUB 200
120 GOSUB 300
130 GOSUB 400
140 END

200 REM GET LENGTH OF DATA, -1 == EOF
210 READ DAT
220 IF DAT=-1 THEN GOTO 250
230 LENGTH=LENGTH+1
240 GOTO 210
250 RESTORE: RETURN

300 REM POPULATE ARRAY 
310 DIM ARR(LENGTH)
320 FOR I=0 TO LENGTH-1
330 READ DAT
340 ARR(I)=DAT
350 NEXT I
360 ? "ARRAY TO SORT": GOSUB 500
370 RETURN

400 REM SORT ARRAY
410 FOR J=0 TO LENGTH-1
420 S=0
430 FOR K=LENGTH-1-K TO 1 STEP -1
440 IF ARR(K-1)>ARR(K) THEN TMP=ARR(K):ARR(K)=ARR(K-1):ARR(K-1)=TMP:S=S+1
450 NEXT K
460 IF S=0 THEN GOTO 490
470 NEXT J
490 ? "SORTED":GOSUB 500: RETURN 

500 REM PRINT ARRAY
510 FOR I=0 TO LENGTH-1
520 ? ARR(I);" ";
530 NEXT I
540 ?: RETURN 

1000 DATA 4,7,5,9,10,6,3,8,20,41,2,17,87,16,-1
