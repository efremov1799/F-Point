# F-Point Project: notes, scripts, data

Author: Vitaly Efremov <v_a_efremov at yahoo.com>

The F-Point is a challenging project driven by xPoint Diagnostics Ltd. 
The project aims to deliver a novel point-of-care device that measures plasma fibrinogen directly in a whole blood sample. 
F-Point is an In-Vitro Diagnostic Device (IVD) that works on optical sensing of a blood specimen.
For more information please visit [http://xpointdiagnostics.com/](http://xpointdiagnostics.com)

The repository contains a brief analytical performance report [AnalytPerforRepor.pdf](https://github.com/efremov1799/F-Point/blob/main/AnalytPerforRepor.pdf) and
collection of files that can be divided into 2 sections:
- F-Point algorithm files;
- F-Point pilot clinical evaluation data; 
<br><br>

## F-Point algorithm files
Here, the F-Point algorithm is described in [Algorithm.pdf](https://github.com/efremov1799/F-Point/blob/main/Algorithm.pdf) with some notes on how it was developed and supposed to be calibrated. <br><br>
The raw signals corresponding to N blood samples that were assayed for the reasons of algorithm development are not to be disclosed here. The signal processing part of the algorithm is also not to be disclosed. However, the set of 5 parameters for each individual signal obtained as a result of the signal processing part can be found here [MLdata1.csv](https://github.com/efremov1799/F-Point/blob/main/MLdata1.csv). The dataset also contains additional variable, HCT, that is Hematocrit value measured by CBC device for each individual blood sample. 
<br><br>
[corefun_fp.R](https://github.com/efremov1799/F-Point/blob/main/corefun_fp.R) is the main function that froms the Machine Learning Part of the F-Point algoritmh. It converts the set of 5 parameters into an assay result value. The result value is presumed to be easily converted into a Fibrinogen (g/L) value after a procedure of calibration.
