# F-Point Project: notes, scripts, data

Author: Vitaly Efremov <v_a_efremov at yahoo.com>
License: [GPL-2](http://cran.nexr.com/web/licenses/GPL-2)

The F-Point is a challenging project driven by xPoint Diagnostics Ltd. 
The project aims to deliver a novel point-of-care device that measures plasma fibrinogen directly in a whole blood sample. 
F-Point is an In-Vitro Diagnostic Device (IVD) that works on optical sensing of a blood specimen.
For more information please visit [http://xpointdiagnostics.com/](http://xpointdiagnostics.com)

## F-Point algorithm files
The F-Point algorithm is described in [Algorithm.pdf](https://github.com/efremov1799/F-Point/blob/main/Algorithm.pdf) with some notes on how it was developed and supposed to be calibrated. <br><br>
The raw signals corresponding to N blood samples that were assayed for the reasons of algorithm development are not to be disclosed here. The signal processing part of the algorithm is also not to be disclosed. However, the set of 5 parameters for each individual signal obtained as a result of the signal processing part can be found here [MLdata1.csv](https://github.com/efremov1799/F-Point/blob/main/MLdata1.csv). The dataset also contains additional variable, HCT, that is Hematocrit value measured by CBC device for each individual blood sample. 
<br><br>
R-file [corefun_fp.R](https://github.com/efremov1799/F-Point/blob/main/corefun_fp.R) is the main function that forms the basis of Machine Learning part of the F-Point algoritmh. It converts the set of 5 parameters into the Result value. The Result value is presumed to be easily converted into a Fibrinogen (g/L) value after a procedure of calibration.

## Brief analytical performance report
The repository alos contains a brief report [AnalytPerforRepor.pdf](https://github.com/efremov1799/F-Point/blob/main/AnalytPerforRepor.pdf) of analytical performance of F-Point method evaluated on artificial quality control samples.

## F-Point pilot clinical evaluation data; 
The repository also contains [folder](https://github.com/efremov1799/F-Point/tree/main/SDTM_Clinical_Eval) with data from clinical evaluation period of F-Point. The data is standardised in order to comply with SDTM model. The define version is 1-0-0, and the corresponding [XML file](https://github.com/efremov1799/F-Point/blob/main/SDTM_Clinical_Eval/define.xml) can be viewed in, e.g., Internet Explorer. There are 3 domains, namely LB, MH, DM that contain Laboratory Obervations, Medical History and Demographics data respectively. In addition, the repository contains pdf docoment [ClinPerformStud.pdf](https://github.com/efremov1799/F-Point/blob/main/ClinPerformStud.pdf) that summarizes key findings from F-Point clinical evaluation study.




