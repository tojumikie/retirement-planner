       IDENTIFICATION DIVISION.
       PROGRAM-ID. RETIREMENT-PLANNER.
       AUTHOR.     TORITSEJU MIKIE.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  AGE PIC 9(3).
       01  MONEY PIC 9(7)V99.
       01  RETIREMENT-AGE PIC 9(3).
       01  PERIOD PIC 9(3).
       01  ANNUAL-RETURN PIC 9(1)V99.
       01  TOTAL-MONEY PIC 9(9)V9(9).
       01  YEARLY-DEPOSIT-AMOUNT PIC 9(7)V99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter your current age: "
           ACCEPT AGE.
           DISPLAY "Enter your current money in the format xxxxxxx.xx,"
           DISPLAY " only numbers."
           ACCEPT MONEY.
           DISPLAY "Enter your retirement age: "
           ACCEPT RETIREMENT-AGE.
           SUBTRACT AGE FROM RETIREMENT-AGE GIVING PERIOD.
           ADD 1 TO PERIOD.
           DISPLAY "You are retiring in ", PERIOD, " years".
           DISPLAY "Enter rate of yearly return as .xx"
           DISPLAY "(recommended .06)"
           ACCEPT ANNUAL-RETURN.
           ADD 1 TO ANNUAL-RETURN.
           DISPLAY "Enter yearly deposit amount as xxxxxxx.xx"
           ACCEPT YEARLY-DEPOSIT-AMOUNT.
      *>      COMPUTE TOTAL-MONEY = (MONEY) * (ANNUAL-RETURN)**PERIOD.
      *>      DISPLAY "The total money that you will have at retirement is"
      *>      DISPLAY TOTAL-MONEY.
           PERFORM A100-PROC PERIOD TIMES.
           DISPLAY "You will retire with $", MONEY.
           STOP RUN.
       A100-PROC.
           COMPUTE MONEY = (MONEY) * (ANNUAL-RETURN)
           ADD YEARLY-DEPOSIT-AMOUNT TO MONEY.
           DISPLAY MONEY.
       END PROGRAM RETIREMENT-PLANNER.
