corefun_fp = function(A0=20, A1=20, CT=30, D25s=10, B400s=20, K1=1) {
  
  # core function of F-Point algorithm
  #-----------
  # A0, A1, CT, D25s and B400s are outcomes of the signal processing procedure
  # K1 is a Hematocrit correction parameter that is defined during separate 
  # calibration procedure. Default is 1 
  #-----------
  # Pass to standardized values:
  #-----------
  # ESR.F is FIB-by-RBCsedimentation 
  # It's derived from A0, and corresponds to how an inhibition of 
  # of RBC Sedimentation is affected by fibrinogen 
  #   ESR.F = 1 if FIB is low  
  #   ESR.F = 0 if FIB is high  
  # --
  # CLOT_DENSITY.F is FIB-by-ClotStrength 
  # It's derived from A1, and corresponds to fibrinogen 
  # effect on Fibrin Polymer Network (Clot) Density.
  #   CLOT_DENSITY.F = 0 if FIB is low  
  #   CLOT_DENSITY.F = 1 if FIB is high  
  # --  
  # CLOT_TIME.F is FIB-by-ClotOnset 
  # It's derived from CT, and corresponds to fibrinogen 
  # effect on log- Clotting Time.
  #   CLOT_TIME.F >= 1 if FIB is 0   
  #   CLOT_TIME.F -> 0 if FIB is high 
  # --    
  # CLOT_RATE.F is FIB-by-ClotGrowth 
  # It's derived from D25s, and corresponds to fibrinogen 
  # effect on log- Clotting Rate.
  #   CLOT_RATE.F = 0 if FIB is 0   
  #   CLOT_RATE.F -> 1 if FIB is high 
  # --    
  # ILogHCT.F is Hematocrit Interaction Factor 
  # It's derived from B400s, and indirectly proportional  
  # to log- HCT.
  #----------- 
  
  ESR.F <- ifelse(A0<15, A0/15, 1) 
  CLOT_DENSITY.F <- ifelse(A1<15, 0, (A1-15)/15)
  CLOT_TIME.F <- 2*log10(CT)-3
  CLOT_RATE.F <- ifelse(D25s<1, 0, log10(D25s))
  ILogHCT.F <- log10(B400s)+log10(K1)
  #----------- 
  # Calculation of Principal Components
  
  PCkinetic <- -0.6*CLOT_TIME.F+0.8*CLOT_RATE.F 
  PCstatic  <- 0.7*CLOT_DENSITY.F-0.7*ESR.F
  #----------- 
  # Response is:
  
  return(0.7*PCkinetic+0.2*PCstatic+1.1*ILogHCT.F)
}