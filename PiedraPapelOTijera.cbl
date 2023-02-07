      ******************************************************************
      * Author: juan jignacio
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PIEDRAPAPELOTIJERA.
       AUTHOR. JuanJignacio.
       INSTALLATION. www.
       DATE-WRITTEN. 05/02/2023.
       DATE-COMPILED. 06/02/2023. 
       DATA DIVISION.  
       FILE SECTION.
       WORKING-STORAGE SECTION.  
       01 PLAYERGUESS-A  PIC 9     VALUE 1.
          88 ROCK-A                VALUE 1.
          88 PAPER-A               VALUE 2.
          88 SCISSORS-A            VALUE 3.
  
       01 PLAYERGUESS-B  PIC 9     VALUE 2.
          88 ROCK-B                VALUE 1.
          88 PAPER-B               VALUE 2.
          88 SCISSORS-B            VALUE 3.
        
       01 RESULTADO      PIC A(15) VALUE NULL.
          88 JUGADORA              VALUE "Jugador A gana".
          88 JUGADORB              VALUE "Jugador B gana".
          88 EMPATE                VALUE "Empate".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE. 
       BEGIN.
           DISPLAY "Guess for player A (1=piedra, 2=papel, 3=tijera) :"
           ACCEPT PLAYERGUESS-A.
           DISPLAY "Guess for player B (1=piedra, 2=papel, 3=tijera) :"
           ACCEPT PLAYERGUESS-B.
            
            
           EVALUATE TRUE ALSO TRUE
           WHEN ROCK-A ALSO PAPER-B
                SET JUGADORA TO TRUE
           WHEN PAPER-A ALSO ROCK-B
                SET JUGADORA TO TRUE
           WHEN SCISSORS-A ALSO PAPER-A
                SET JUGADORA TO TRUE
           WHEN ROCK-B ALSO PAPER-A
                SET JUGADORB TO TRUE
           WHEN PAPER-A ALSO ROCK-B
                SET JUGADORB TO TRUE
           WHEN SCISSORS-B ALSO PAPER-A
                SET JUGADORB TO TRUE
           WHEN OTHER
                SET EMPATE TO TRUE
           END-EVALUATE
           DISPLAY RESULTADO
         
           STOP RUN.
       END PROGRAM PIEDRAPAPELOTIJERA.