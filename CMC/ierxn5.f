      subroutine ierxn5(y,ny,r,rk,nk)
c
c-----CAMx v4.02 030709
c
c     IERXN5 computes IEH solver fluxes for each reaction
c
c     Copyright 1997, 1998, 1999, 2000, 2001, 2002, 2003
c     ENVIRON International Corporation
c
c     Routines Called:
c        none
c
c     Called by:
c        IEHSOLV
c        IERATE5
c        IEJAC5
c
      include "camx.prm"
      include "iehchem.com"
c
      real H2O, M, O2, CH4, H2
      real y(ny+6),r(nk),rk(nk)
c
c --- Entry point
c
      H2O = y(ny+2)
      M   = y(ny+3)
      O2  = y(ny+4)
      CH4 = y(ny+5)
      H2  = y(ny+6)
c
c --- Calculate reaction rates
c
      r(  1) = rk(  1)*y(iNO2)
      r(  2) = rk(  2)*y(iO)*O2*M
      r(  3) = rk(  3)*y(iO)*y(iO3)
      r(  4) = rk(  4)*y(iO)*y(iNO)*M
      r(  5) = rk(  5)*y(iO)*y(iNO2)
      r(  6) = rk(  6)*y(iO)*y(iNO2)
      r(  7) = rk(  7)*y(iO3)*y(iNO)
      r(  8) = rk(  8)*y(iO3)*y(iNO2)
      r(  9) = rk(  9)*y(iNO)*y(iNO3)
      r( 10) = rk( 10)*y(iNO)*y(iNO)*O2
      r( 11) = rk( 11)*y(iNO2)*y(iNO3)
      r( 12) = rk( 12)*y(iN2O5)
      r( 13) = rk( 13)*y(iN2O5)*H2O
      r( 14) = rk( 14)*y(iNO2)*y(iNO3)
      r( 15) = rk( 15)*y(iNO3)
      r( 16) = rk( 16)*y(iNO3)
      r( 17) = rk( 17)*y(iO3)
      r( 18) = rk( 18)*y(iO3)
      r( 19) = rk( 19)*y(iO1D)*H2O
      r( 20) = rk( 20)*y(iO1D)*M
      r( 21) = rk( 21)*y(iOH)*y(iNO)
      r( 22) = rk( 22)*y(iHONO)
      r( 23) = rk( 23)*y(iHONO)
      r( 24) = rk( 24)*y(iOH)*y(iHONO)
      r( 25) = rk( 25)*y(iOH)*y(iNO2)
      r( 26) = rk( 26)*y(iOH)*y(iNO3)
      r( 27) = rk( 27)*y(iOH)*y(iHNO3)
      r( 28) = rk( 28)*y(iHNO3)
      r( 29) = rk( 29)*y(iOH)*y(iCO)
      r( 30) = rk( 30)*y(iOH)*y(iO3)
      r( 31) = rk( 31)*y(iHO2)*y(iNO)
      r( 32) = rk( 32)*y(iHO2)*y(iNO2)
      r( 33) = rk( 33)*y(iHNO4)
      r( 34) = rk( 34)*y(iHNO4)
      r( 35) = rk( 35)*y(iHNO4)*y(iOH)
      r( 36) = rk( 36)*y(iHO2)*y(iO3)
      r( 37) = rk( 37)*y(iHO2)*y(iHO2)
      r( 38) = rk( 38)*y(iHO2)*y(iHO2)*H2O
      r( 39) = rk( 39)*y(iNO3)*y(iHO2)
      r( 40) = rk( 40)*y(iNO3)*y(iNO3)
      r( 41) = rk( 41)*y(iHO2H)
      r( 42) = rk( 42)*y(iHO2H)*y(iOH)
      r( 43) = rk( 43)*y(iOH)*y(iHO2)
      r( 44) = rk( 44)*y(iOH)*y(iSO2)
      r( 45) = rk( 45)*y(iOH)*H2
      r( 46) = rk( 46)*y(iCXO2)*y(iNO)
      r( 47) = rk( 47)*y(iCXO2)*y(iHO2)
      r( 48) = rk( 48)*y(iCXO2)*y(iNO3)
      r( 49) = rk( 49)*y(iCXO2)*y(iCXO2)
      r( 50) = rk( 50)*y(iCXO2)*y(iCXO2)
      r( 51) = rk( 51)*y(iRO2R)*y(iNO)
      r( 52) = rk( 52)*y(iRO2R)*y(iHO2)
      r( 53) = rk( 53)*y(iRO2R)*y(iNO3)
      r( 54) = rk( 54)*y(iRO2R)*y(iCXO2)
      r( 55) = rk( 55)*y(iRO2R)*y(iRO2R)
      r( 56) = rk( 56)*y(iR2O2)*y(iNO)
      r( 57) = rk( 57)*y(iR2O2)*y(iHO2)
      r( 58) = rk( 58)*y(iR2O2)*y(iNO3)
      r( 59) = rk( 59)*y(iR2O2)*y(iCXO2)
      r( 60) = rk( 60)*y(iR2O2)*y(iRO2R)
      r( 61) = rk( 61)*y(iR2O2)*y(iR2O2)
      r( 62) = rk( 62)*y(iRO2N)*y(iNO)
      r( 63) = rk( 63)*y(iRO2N)*y(iHO2)
      r( 64) = rk( 64)*y(iRO2N)*y(iCXO2)
      r( 65) = rk( 65)*y(iRO2N)*y(iNO3)
      r( 66) = rk( 66)*y(iRO2N)*y(iRO2R)
      r( 67) = rk( 67)*y(iRO2N)*y(iR2O2)
      r( 68) = rk( 68)*y(iRO2N)*y(iRO2N)
      r( 69) = rk( 69)*y(iCCO3)*y(iNO2)
      r( 70) = rk( 70)*y(iPAN)
      r( 71) = rk( 71)*y(iCCO3)*y(iNO)
      r( 72) = rk( 72)*y(iCCO3)*y(iHO2)
      r( 73) = rk( 73)*y(iCCO3)*y(iNO3)
      r( 74) = rk( 74)*y(iCCO3)*y(iCXO2)
      r( 75) = rk( 75)*y(iCCO3)*y(iRO2R)
      r( 76) = rk( 76)*y(iCCO3)*y(iR2O2)
      r( 77) = rk( 77)*y(iCCO3)*y(iRO2N)
      r( 78) = rk( 78)*y(iCCO3)*y(iCCO3)
      r( 79) = rk( 79)*y(iRCO3)*y(iNO2)
      r( 80) = rk( 80)*y(iPAN2)
      r( 81) = rk( 81)*y(iRCO3)*y(iNO)
      r( 82) = rk( 82)*y(iRCO3)*y(iHO2)
      r( 83) = rk( 83)*y(iRCO3)*y(iNO3)
      r( 84) = rk( 84)*y(iRCO3)*y(iCXO2)
      r( 85) = rk( 85)*y(iRCO3)*y(iRO2R)
      r( 86) = rk( 86)*y(iRCO3)*y(iR2O2)
      r( 87) = rk( 87)*y(iRCO3)*y(iRO2N)
      r( 88) = rk( 88)*y(iRCO3)*y(iCCO3)
      r( 89) = rk( 89)*y(iRCO3)*y(iRCO3)
      r( 90) = rk( 90)*y(iBZCO)*y(iNO2)
      r( 91) = rk( 91)*y(iPBZN)
      r( 92) = rk( 92)*y(iBZCO)*y(iNO)
      r( 93) = rk( 93)*y(iBZCO)*y(iHO2)
      r( 94) = rk( 94)*y(iBZCO)*y(iNO3)
      r( 95) = rk( 95)*y(iBZCO)*y(iCXO2)
      r( 96) = rk( 96)*y(iBZCO)*y(iRO2R)
      r( 97) = rk( 97)*y(iBZCO)*y(iR2O2)
      r( 98) = rk( 98)*y(iBZCO)*y(iRO2N)
      r( 99) = rk( 99)*y(iBZCO)*y(iCCO3)
      r(100) = rk(100)*y(iBZCO)*y(iRCO3)
      r(101) = rk(101)*y(iBZCO)*y(iBZCO)
      r(102) = rk(102)*y(iMCO3)*y(iNO2)
      r(103) = rk(103)*y(iMPAN)
      r(104) = rk(104)*y(iMCO3)*y(iNO)
      r(105) = rk(105)*y(iMCO3)*y(iHO2)
      r(106) = rk(106)*y(iMCO3)*y(iNO3)
      r(107) = rk(107)*y(iMCO3)*y(iCXO2)
      r(108) = rk(108)*y(iMCO3)*y(iRO2R)
      r(109) = rk(109)*y(iMCO3)*y(iR2O2)
      r(110) = rk(110)*y(iMCO3)*y(iRO2N)
      r(111) = rk(111)*y(iMCO3)*y(iCCO3)
      r(112) = rk(112)*y(iMCO3)*y(iRCO3)
      r(113) = rk(113)*y(iMCO3)*y(iBZCO)
      r(114) = rk(114)*y(iMCO3)*y(iMCO3)
      r(115) = rk(115)*y(iTBUO)*y(iNO2)
      r(116) = rk(116)*y(iTBUO)
      r(117) = rk(117)*y(iBZO)*y(iNO2)
      r(118) = rk(118)*y(iBZO)*y(iHO2)
      r(119) = rk(119)*y(iBZO)
      r(120) = rk(120)*y(iBZNO)*y(iNO2)
      r(121) = rk(121)*y(iBZNO)*y(iHO2)
      r(122) = rk(122)*y(iBZNO)
      r(123) = rk(123)*y(iHCHO)
      r(124) = rk(124)*y(iHCHO)
      r(125) = rk(125)*y(iHCHO)*y(iOH)
      r(126) = rk(126)*y(iHCHO)*y(iHO2)
      r(127) = rk(127)*y(iHCO3)
      r(128) = rk(128)*y(iHCO3)*y(iNO)
      r(129) = rk(129)*y(iHCHO)*y(iNO3)
      r(130) = rk(130)*y(iCCHO)*y(iOH)
      r(131) = rk(131)*y(iCCHO)
      r(132) = rk(132)*y(iCCHO)*y(iNO3)
      r(133) = rk(133)*y(iRCHO)*y(iOH)
      r(134) = rk(134)*y(iRCHO)
      r(135) = rk(135)*y(iRCHO)*y(iNO3)
      r(136) = rk(136)*y(iACET)*y(iOH)
      r(137) = rk(137)*y(iACET)
      r(138) = rk(138)*y(iMEK)*y(iOH)
      r(139) = rk(139)*y(iMEK)
      r(140) = rk(140)*y(iMEOH)*y(iOH)
      r(141) = rk(141)*y(iCOOH)*y(iOH)
      r(142) = rk(142)*y(iCOOH)
      r(143) = rk(143)*y(iROOH)*y(iOH)
      r(144) = rk(144)*y(iROOH)
      r(145) = rk(145)*y(iGLY)
      r(146) = rk(146)*y(iGLY)
      r(147) = rk(147)*y(iGLY)*y(iOH)
      r(148) = rk(148)*y(iGLY)*y(iNO3)
      r(149) = rk(149)*y(iMGLY)
      r(150) = rk(150)*y(iMGLY)*y(iOH)
      r(151) = rk(151)*y(iMGLY)*y(iNO3)
      r(152) = rk(152)*y(iBACL)
      r(153) = rk(153)*y(iPHEN)*y(iOH)
      r(154) = rk(154)*y(iPHEN)*y(iNO3)
      r(155) = rk(155)*y(iCRES)*y(iOH)
      r(156) = rk(156)*y(iCRES)*y(iNO3)
      r(157) = rk(157)*y(iNPHE)*y(iNO3)
      r(158) = rk(158)*y(iBALD)*y(iOH)
      r(159) = rk(159)*y(iBALD)
      r(160) = rk(160)*y(iBALD)*y(iNO3)
      r(161) = rk(161)*y(iMETH)*y(iOH)
      r(162) = rk(162)*y(iMETH)*y(iO3)
      r(163) = rk(163)*y(iMETH)*y(iNO3)
      r(164) = rk(164)*y(iMETH)*y(iO)
      r(165) = rk(165)*y(iMETH)
      r(166) = rk(166)*y(iMVK)*y(iOH)
      r(167) = rk(167)*y(iMVK)*y(iO3)
      r(168) = rk(168)*y(iMVK)*y(iO)
      r(169) = rk(169)*y(iMVK)
      r(170) = rk(170)*y(iISPD)*y(iOH)
      r(171) = rk(171)*y(iISPD)*y(iO3)
      r(172) = rk(172)*y(iISPD)*y(iNO3)
      r(173) = rk(173)*y(iISPD)
      r(174) = rk(174)*y(iPROD)*y(iOH)
      r(175) = rk(175)*y(iPROD)
      r(176) = rk(176)*y(iRNO3)*y(iOH)
      r(177) = rk(177)*y(iRNO3)
      r(178) = rk(178)*y(iDCB1)*y(iOH)
      r(179) = rk(179)*y(iDCB1)*y(iO3)
      r(180) = rk(180)*y(iDCB2)*y(iOH)
      r(181) = rk(181)*y(iDCB2)
      r(182) = rk(182)*y(iDCB3)*y(iOH)
      r(183) = rk(183)*y(iDCB3)
      r(184) = rk(184)*CH4*y(iOH)
      r(185) = rk(185)*y(iETHE)*y(iOH)
      r(186) = rk(186)*y(iETHE)*y(iO3)
      r(187) = rk(187)*y(iETHE)*y(iNO3)
      r(188) = rk(188)*y(iETHE)*y(iO)
      r(189) = rk(189)*y(iISOP)*y(iOH)
      r(190) = rk(190)*y(iISOP)*y(iO3)
      r(191) = rk(191)*y(iISOP)*y(iNO3)
      r(192) = rk(192)*y(iISOP)*y(iO)
      r(193) = rk(193)*y(iTERP)*y(iOH)
      r(194) = rk(194)*y(iTERP)*y(iO3)
      r(195) = rk(195)*y(iTERP)*y(iNO3)
      r(196) = rk(196)*y(iTERP)*y(iO)
      r(197) = rk(197)*y(iALK1)*y(iOH)
      r(198) = rk(198)*y(iALK2)*y(iOH)
      r(199) = rk(199)*y(iALK3)*y(iOH)
      r(200) = rk(200)*y(iALK4)*y(iOH)
      r(201) = rk(201)*y(iALK5)*y(iOH)
      r(202) = rk(202)*y(iARO1)*y(iOH)
      r(203) = rk(203)*y(iARO2)*y(iOH)
      r(204) = rk(204)*y(iOLE1)*y(iOH)
      r(205) = rk(205)*y(iOLE1)*y(iO3)
      r(206) = rk(206)*y(iOLE1)*y(iNO3)
      r(207) = rk(207)*y(iOLE1)*y(iO)
      r(208) = rk(208)*y(iOLE2)*y(iOH)
      r(209) = rk(209)*y(iOLE2)*y(iO3)
      r(210) = rk(210)*y(iOLE2)*y(iNO3)
      r(211) = rk(211)*y(iOLE2)*y(iO)
c
      return
      end
