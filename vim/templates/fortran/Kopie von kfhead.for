C     Neutrale FORTRAN 77 Version mit Fortran 90 Erweiterungen
C     ------------------------------------------------------------------
      SUBROUTINE FNAME ( RET )
C     ------------------------------------------------------------------
C
C     ------------------------------------------------------------------
C     Erstellung
C     -----------
C     Version:       WTPlus 1.0
C     Autor:         FZG, TU Muenchen
C     Datum:         August 2001
C
C     Aenderung:
C     ----------
C     Version:
C     Datum:
C     Zweck/Grund:
C     ------------------------------------------------------------------
C     Uebergabeparameterliste:
C     ------------------------
C     (Name)    (Typ)   (Dim)    (I/O) (Beschreibung)
C
C     ------------------------------------------------------------------
C     Verwendete Commonbloecke im Programmteil:
C     -----------------------------------------
C     (Name)     (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufrufende Programmteile:
C     -------------------------
C     (Name)       (Typ)    (Beschreibung)
C
C     ------------------------------------------------------------------
C     Aufgerufene Programmroutinen:
C     -----------------------------
C     (Name)       (Typ)    (Beschreibung)
C
C     ------------------------------------------------------------------
C     Verwendete Variablen im Programmteil:
C     -------------------------------------
C     (Name)    (Typ)   (Dim)     (Art)     (Beschreibung)
C
C     ------------------------------------------------------------------
C     Variablenvereinbarung
C     ------------------------------------------------------------------
C
      IMPLICIT  NONE
      INTEGER  RET
      RET = 0

      CALL DBGF( DBG, "FNAME")
C
C     ------------------------------------------------------------------
C     Start aktiver Programmteil
C     ------------------------------------------------------------------
C
      
      CALL DBGRET( DBG, RET ) 
      RETURN
      END
