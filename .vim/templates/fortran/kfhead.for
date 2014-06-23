C     Neutrale FORTRAN 77 Version mit FORTRAN 90/95 Erweiterungen       
C                                                                       
C     ------------------------------------------------------------------
      SUBROUTINE ROUTINEN_NAME( IERR )
C     ------------------------------------------------------------------
C     KURZBESCHREIBUNG DER FUNKTION
C     
C     AUSFUEHRLICHE DOKUMENTATION ZUR FUNKTION, ALGORITHMUS
C     
C     ------------------------------------------------------------------
C     Erstellung / letzte Aenderung:                                    
C     -----------                                                       
C     Version: $Revision:$
C     Autor:   $Author:  $      
C     Datum:   $Date:    $
C                                                                       
C     ------------------------------------------------------------------
C     Uebergabeparameterliste:
C     ------------------------
C     (Name)     (Typ)   (Dim)  (I/O)  (Beschreibung)
C
C     ------------------------------------------------------------------
C     Verwendete Commonbloecke im Programmteil:                         
C     -----------------------------------------                         
C     (Name)      (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufrufende Programmteile:
C     -------------------------
C     (Name)    (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufgerufene Programmroutinen:
C     -----------------------------
C     (Name)        (Typ)      (Beschreibung)
C
C     ------------------------------------------------------------------
C     Verwendete Variablen im Programmteil:
C     -------------------------------------
C     (Name)    (Typ) (Dim)      (Art)   (Beschreibung)
C
C     ------------------------------------------------------------------
C     Kategorie dieser Funktion:
C     --------------------------
C     XML::ERRORHANDLING::RECHENKERNVORGABE_SETZEN
C     ------------------------------------------------------------------
C     Variablenvereinbarung
C     ------------------------------------------------------------------
C                                                                       
C     USE XEMOD
      IMPLICIT  NONE

C     INTEGER, INTENT(IN)::TRID
C     CHARACTER(LEN=*), INTENT(OUT):: XSLNAME
      INTEGER, INTENT(OUT)::IERR
C
C     ------------------------------------------------------------------
C     Einlesen der COMMON-Bloecke ueber INCLUDE-Dateien
C     ------------------------------------------------------------------
C
      INCLUDE 'dbgon.cmm'
      IERR = 0

      CALL DBGF( DBG, 'ROUTINEN_NAME' )

C     ------------------------------------------------------------------
C     Eingangs - Argumente pruefen
C     ------------------------------------------------------------------
      IF ( .LE. 0 )    IERR = -2
      IF ( IERR .NE. 0 )  goto 9999

C     ------------------------------------------------------------------
C     Start aktiver Programmteil                                        
C     ------------------------------------------------------------------

      
C     ------------------------------------------------------------------
C     Ruecksprung zum Rufprogramm und Ende
C     ------------------------------------------------------------------
 9999 CONTINUE
      CALL DBGRET( DBG, IERR ) 
      RETURN
      END SUBROUTINE ROUTINEN_NAME
C     vim: tw=80 foldmarker=<<<,>>>:
