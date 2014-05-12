      subroutine ieslow2(r,rate,gain,loss,nr,ny,n1,n2)
c
c-----CAMx v4.02 030709
c
c     IESLOW2 computes reaction rates for slow state species
c
c     Copyright 1997, 1998, 1999, 2000, 2001, 2002, 2003
c     ENVIRON International Corporation
c
c     Routines Called:
c        none
c
c     Called by:
c        IEHSOLV
c
      include "camx.prm"
      include "iehchem.com"
c
      real loss(ny+1),gain(ny+1),rate(ny+1),r(nr)
c
c --- Entry point
c
      do l=n1,n2
        Loss(l) = 0.0
        Gain(l) = 0.0
      enddo
c
c --- Calculate the species rates
c
c
c  HNO3  HONO   PNA  H2O2    CO  FORM  ALD2   PAR   NTR   OLE
c   ETH   TOL  CRES  OPEN  MGLY   XYL  ISOP   SO2  SULF  MEOH
c  ETOH
c
        Loss(iHNO3 )= +( 1.000)*r( 27)
        Gain(iHNO3 )= +( 2.000)*r( 18)+( 1.000)*r( 26)+( 1.000)*r( 41)
     &                +( 1.000)*r( 44)+( 1.000)*r( 67)
        Loss(iHONO )= +( 1.000)*r( 23)+( 1.000)*r( 24)+( 2.000)*r( 25)
        Gain(iHONO )= +( 2.000)*r( 21)+( 1.000)*r( 22)
        Loss(iPNA  )= +( 1.000)*r( 30)+( 1.000)*r( 31)
        Gain(iPNA  )= +( 1.000)*r( 29)
        Loss(iH2O2 )= +( 1.000)*r( 34)+( 1.000)*r( 35)
        Gain(iH2O2 )= +( 1.000)*r( 32)+( 1.000)*r( 33)
        Loss(iCO   )= +( 1.000)*r( 36)
        Gain(iCO   )= +( 1.000)*r( 37)+( 1.000)*r( 38)+( 1.000)*r( 39)
     &                +( 1.000)*r( 40)+( 1.000)*r( 41)+( 1.000)*r( 45)
     &                +( 0.300)*r( 56)+( 0.330)*r( 58)+( 1.000)*r( 60)
     &                +( 0.420)*r( 62)+( 1.000)*r( 69)+( 2.000)*r( 70)
     &                +( 0.690)*r( 71)+( 1.000)*r( 74)+( 0.500)*r( 75)
     &                +( 0.060)*r( 77)
        Loss(iFORM )= +( 1.000)*r( 37)+( 1.000)*r( 38)+( 1.000)*r( 39)
     &                +( 1.000)*r( 40)+( 1.000)*r( 41)
        Gain(iFORM )= +( 1.000)*r( 45)+( 1.000)*r( 46)+( 2.000)*r( 49)
     &                +( 0.790)*r( 50)+( 1.000)*r( 51)+( 0.200)*r( 56)
     &                +( 1.000)*r( 57)+( 0.740)*r( 58)+( 1.000)*r( 59)
     &                +( 1.000)*r( 60)+( 1.560)*r( 61)+( 1.000)*r( 62)
     &                +( 1.000)*r( 70)+( 0.700)*r( 71)+( 1.000)*r( 76)
     &                +( 1.000)*r( 77)+( 1.000)*r( 84)
        Loss(iALD2 )= +( 1.000)*r( 42)+( 1.000)*r( 43)+( 1.000)*r( 44)
     &                +( 1.000)*r( 45)
        Gain(iALD2 )= +( 0.110)*r( 52)+( 1.100)*r( 53)+( 0.630)*r( 56)
     &                +( 1.000)*r( 57)+( 0.500)*r( 58)+( 1.000)*r( 59)
     &                +( 0.220)*r( 61)+( 0.030)*r( 71)+( 0.800)*r( 75)
     &                +( 0.200)*r( 76)+( 0.400)*r( 77)+( 1.000)*r( 85)
        Loss(iPAR  )= +( 1.000)*r( 52)
        Gain(iPAR  )= +(-0.110)*r( 52)+(-2.100)*r( 53)+( 0.220)*r( 56)
     &                +(-1.000)*r( 57)+(-1.000)*r( 58)+(-1.000)*r( 59)
     &                +( 1.100)*r( 72)+( 0.900)*r( 75)+( 0.100)*r( 77)

        Gain(iNTR  )= +( 1.000)*r( 55)+( 0.100)*r( 64)+( 1.000)*r( 68)
     &                +( 1.000)*r( 78)+( 1.000)*r( 81)
        Loss(iOLE  )= +( 1.000)*r( 56)+( 1.000)*r( 57)+( 1.000)*r( 58)
     &                +( 1.000)*r( 59)
        Gain(iOLE  )= +( 0.550)*r( 75)
        Loss(iETH  )= +( 1.000)*r( 60)+( 1.000)*r( 61)+( 1.000)*r( 62)
        Gain(iETH  )= +( 0.450)*r( 75)+( 1.000)*r( 76)+( 0.550)*r( 77)
        Loss(iTOL  )= +( 1.000)*r( 63)

        Loss(iCRES )= +( 1.000)*r( 66)+( 1.000)*r( 67)
        Gain(iCRES )= +( 0.360)*r( 63)+( 1.000)*r( 65)+( 0.200)*r( 72)
        Loss(iOPEN )= +( 1.000)*r( 69)+( 1.000)*r( 70)+( 1.000)*r( 71)
        Gain(iOPEN )= +( 0.900)*r( 64)+( 0.300)*r( 66)
        Loss(iMGLY )= +( 1.000)*r( 73)+( 1.000)*r( 74)
        Gain(iMGLY )= +( 0.200)*r( 71)+( 0.800)*r( 72)+( 0.400)*r( 76)
     &                +( 0.200)*r( 77)
        Loss(iXYL  )= +( 1.000)*r( 72)

        Loss(iISOP )= +( 1.000)*r( 75)+( 1.000)*r( 76)+( 1.000)*r( 77)
     &                +( 1.000)*r( 78)

        Loss(iSO2  )= +( 1.000)*r( 82)+( 1.000)*r( 83)


        Gain(iSULF )= +( 1.000)*r( 82)+( 1.000)*r( 83)
        Loss(iMEOH )= +( 1.000)*r( 84)

        Loss(iETOH )= +( 1.000)*r( 85)

c
      do l=n1,n2
        rate(l) = gain(l) -loss(l)
      enddo
c
      return
      end