C     Neutrale FORTRAN 77 Version mit FORTRAN 90/95 Erweiterungen       
C                                                                       
C     ------------------------------------------------------------------
      SUBROUTINE FNAME( DBG, IERR )
C     ------------------------------------------------------------------
C     Testfunktion 
C     
C     ------------------------------------------------------------------
C     Erstellung / letzte Aenderung:                                    
C     -----------                                                       
C     Version:       FZG Library                                        
C     Autor: $Id:$
C     Datum:
C                                                                       
C     ------------------------------------------------------------------
C     Uebergabeparameterliste:
C     ------------------------
C     (Name)     (Typ)   (Dim)  (I/O)  (Beschreibung)
C
C     IERR       INT       -      O    ErrorCode
C     ------------------------------------------------------------------
C     Verwendete Commonbloecke im Programmteil:                         
C     -----------------------------------------                         
C     (Name)    (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufrufende Programmteile:
C     -------------------------
C     (Name)    (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufgerufene Programmroutinen:
C     -----------------------------
C     (Name)    (Typ)      (Beschreibung)
C
C     ------------------------------------------------------------------
C     Verwendete Variablen im Programmteil:
C     -------------------------------------
C     (Name)    (Typ) (Dim) (Art)   (Beschreibung)
C
C     ------------------------------------------------------------------
C     Kategorie dieser Funktion:
C     --------------------------
C     
C     ------------------------------------------------------------------
C     Variablenvereinbarung
C     ------------------------------------------------------------------
C                                                                       
      IMPLICIT  NONE
      INTEGER   IERR
      INTEGER   DBG
C
C     ------------------------------------------------------------------
C     Einlesen der COMMON-Bloecke ueber INCLUDE-Dateien
C     ------------------------------------------------------------------
C
C     ------------------------------------------------------------------
C     Start aktiver Programmteil                                        
C     ------------------------------------------------------------------
C
      IERR = 0

      CALL DBGK( DBG, "------------------<TEST>--------------------" );
      CALL DBGK( DBG, "                                            " );
      CALL DBGK( DBG, "------------------<TEST>--------------------" );

      CALL DBGF( DBG, 'FNAME' )

C     <CODE_EXAMPLE>
      CALL DBGK( DBG, "---TEST 1---" );
      CALL DBGK( DBG, "-Vorgaben-" );

      CALL DBGK( DBG, "-Ergebnis-" );
C     <\CODE_EXAMPLE>

 
C     ------------------------------------------------------------------
C     Ruecksprung zum Rufprogramm und Ende
C     ------------------------------------------------------------------
C
      CALL DBGRET( DBG, IERR ) 
      RETURN
      END
