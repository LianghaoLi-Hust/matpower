function [baseMVA, bus, gen, branch, areas, gencost] = case39
%CASE39    Power flow data for 39 bus case.
%   Please see 'help caseformat' for details on the case file format.

%   MATPOWER
%   $Id$

baseMVA = 100.0; 

%bus type  Pd      Qd       Gs      Bs    area  Vm      Va      baseKV zone   Vmax   Vmin
bus = [
   1  1      0.00     0.00    0.000    0.000   1   1.00000    0.000     0.00  1    1.06000  0.94000
   2  1      0.00     0.00    0.000    0.000   1   1.00000    0.000     0.00  1    1.06000  0.94000
   3  1    322.00     2.40    0.000    0.000   1   1.03410   -9.730     0.00  1    1.06000  0.94000
   4  1    500.00   184.00    0.000    0.000   1   1.01160  -10.530     0.00  1    1.06000  0.94000
   5  1      0.00     0.00    0.000    0.000   1   1.01650   -9.380     0.00  1    1.06000  0.94000
   6  1      0.00     0.00    0.000    0.000   1   1.01720   -8.680     0.00  1    1.06000  0.94000
   7  1    233.80    84.00    0.000    0.000   1   1.00670  -10.840     0.00  1    1.06000  0.94000
   8  1    522.00   176.60    0.000    0.000   1   1.00570  -11.340     0.00  1    1.06000  0.94000
   9  1      0.00     0.00    0.000    0.000   1   1.03220  -11.150     0.00  1    1.06000  0.94000
  10  1      0.00     0.00    0.000    0.000   1   1.02350   -6.310     0.00  1    1.06000  0.94000
  11  1      0.00     0.00    0.000    0.000   1   1.02010   -7.120     0.00  1    1.06000  0.94000
  12  1      8.50    88.00    0.000    0.000   1   1.00720   -7.140     0.00  1    1.06000  0.94000
  13  1      0.00     0.00    0.000    0.000   1   1.02070   -7.020     0.00  1    1.06000  0.94000
  14  1      0.00     0.00    0.000    0.000   1   1.01810   -8.660     0.00  1    1.06000  0.94000
  15  1    320.00   153.00    0.000    0.000   1   1.01940   -9.060     0.00  1    1.06000  0.94000
  16  1    329.40    32.30    0.000    0.000   1   1.03460   -7.660     0.00  1    1.06000  0.94000
  17  1      0.00     0.00    0.000    0.000   1   1.03650   -8.650     0.00  1    1.06000  0.94000
  18  1    158.00    30.00    0.000    0.000   1   1.03430   -9.490     0.00  1    1.06000  0.94000
  19  1      0.00     0.00    0.000    0.000   1   1.05090   -3.040     0.00  1    1.06000  0.94000
  20  1    680.00   103.00    0.000    0.000   1   0.99140   -4.450     0.00  1    1.06000  0.94000
  21  1    274.00   115.00    0.000    0.000   1   1.03370   -5.260     0.00  1    1.06000  0.94000
  22  1      0.00     0.00    0.000    0.000   1   1.05090   -0.820     0.00  1    1.06000  0.94000
  23  1    247.50    84.60    0.000    0.000   1   1.04590   -1.020     0.00  1    1.06000  0.94000
  24  1    308.60   -92.20    0.000    0.000   1   1.03990   -7.540     0.00  1    1.06000  0.94000
  25  1    224.00    47.20    0.000    0.000   1   1.05870   -5.510     0.00  1    1.06000  0.94000
  26  1    139.00    17.00    0.000    0.000   1   1.05360   -6.770     0.00  1    1.06000  0.94000
  27  1    281.00    75.50    0.000    0.000   1   1.03990   -8.780     0.00  1    1.06000  0.94000
  28  1    206.00    27.60    0.000    0.000   1   1.05090   -3.270     0.00  1    1.06000  0.94000
  29  1    283.50    26.90    0.000    0.000   1   1.05050   -0.510     0.00  1    1.06000  0.94000
  30  2      0.00     0.00    0.000    0.000   1   1.04750    0.000     0.00  1    1.06000  0.94000
  31  3      9.20     4.60    0.000    0.000   1   0.98200    0.000     0.00  1    1.06000  0.94000
  32  2      0.00     0.00    0.000    0.000   1   0.98310    1.630     0.00  1    1.06000  0.94000
  33  2      0.00     0.00    0.000    0.000   1   0.99720    2.180     0.00  1    1.06000  0.94000
  34  2      0.00     0.00    0.000    0.000   1   1.01230    0.740     0.00  1    1.06000  0.94000
  35  2      0.00     0.00    0.000    0.000   1   1.04930    4.140     0.00  1    1.06000  0.94000
  36  2      0.00     0.00    0.000    0.000   1   1.06350    6.830     0.00  1    1.06000  0.94000
  37  2      0.00     0.00    0.000    0.000   1   1.02780    1.270     0.00  1    1.06000  0.94000
  38  2      0.00     0.00    0.000    0.000   1   1.02650    6.550     0.00  1    1.06000  0.94000
  39  2   1104.00   250.00    0.000    0.000   1   1.03000  -10.960     0.00  1    1.06000  0.94000
];     

%bus  Pg       Qg      Qmax    Qmin   Vsp      base  status   Pmax    Pmin
gen = [
  30   250.00   103.30  9999.00 -9999.00  1.04750   100.00    1      350.00     0.00
  31   572.90   170.30  9999.00 -9999.00  0.98200   100.00    1     1145.55     0.00
  32   650.00   175.90  9999.00 -9999.00  0.98310   100.00    1      750.00     0.00
  33   632.00   103.30  9999.00 -9999.00  0.99720   100.00    1      732.00     0.00
  34   508.00   164.40  9999.00 -9999.00  1.01230   100.00    1      608.00     0.00
  35   650.00   204.80  9999.00 -9999.00  1.04930   100.00    1      750.00     0.00
  36   560.00    96.90  9999.00 -9999.00  1.06350   100.00    1      660.00     0.00
  37   540.00    -4.40  9999.00 -9999.00  1.02780   100.00    1      640.00     0.00
  38   830.00    19.40  9999.00 -9999.00  1.02650   100.00    1      930.00     0.00
  39  1000.00    68.50  9999.00 -9999.00  1.03000   100.00    1     1100.00     0.00
];	

%fbus tbus      r     x     b       ratea   rateb   ratec ratio   angle  statu
branch = [
   1    2   0.00350  0.04110  0.69870  9900.00     0.00      0.00  0.00000    0.000     1
   1   39   0.00100  0.02500  0.75000  9900.00     0.00      0.00  0.00000    0.000     1
   2    3   0.00130  0.01510  0.25720  9900.00     0.00      0.00  0.00000    0.000     1
   2   25   0.00700  0.00860  0.14600  9900.00     0.00      0.00  0.00000    0.000     1
   3    4   0.00130  0.02130  0.22140  9900.00     0.00      0.00  0.00000    0.000     1
   3   18   0.00110  0.01330  0.21380  9900.00     0.00      0.00  0.00000    0.000     1
   4    5   0.00080  0.01280  0.13420  9900.00     0.00      0.00  0.00000    0.000     1
   4   14   0.00080  0.01290  0.13820  9900.00     0.00      0.00  0.00000    0.000     1
   5    6   0.00020  0.00260  0.04340  9900.00     0.00      0.00  0.00000    0.000     1
   5    8   0.00080  0.01120  0.14760  9900.00     0.00      0.00  0.00000    0.000     1
   6    7   0.00060  0.00920  0.11300  9900.00     0.00      0.00  0.00000    0.000     1
   6   11   0.00070  0.00820  0.13890  9900.00     0.00      0.00  0.00000    0.000     1
   7    8   0.00040  0.00460  0.07800  9900.00     0.00      0.00  0.00000    0.000     1
   8    9   0.00230  0.03630  0.38040  9900.00     0.00      0.00  0.00000    0.000     1
   9   39   0.00100  0.02500  1.20000  9900.00     0.00      0.00  0.00000    0.000     1
  10   11   0.00040  0.00430  0.07290  9900.00     0.00      0.00  0.00000    0.000     1
  10   13   0.00040  0.00430  0.07290  9900.00     0.00      0.00  0.00000    0.000     1
  13   14   0.00090  0.01010  0.17230  9900.00     0.00      0.00  0.00000    0.000     1
  14   15   0.00180  0.02170  0.36600  9900.00     0.00      0.00  0.00000    0.000     1
  15   16   0.00090  0.00940  0.17100  9900.00     0.00      0.00  0.00000    0.000     1
  16   17   0.00070  0.00890  0.13420  9900.00     0.00      0.00  0.00000    0.000     1
  16   19   0.00160  0.01950  0.30400  9900.00     0.00      0.00  0.00000    0.000     1
  16   21   0.00080  0.01350  0.25480  9900.00     0.00      0.00  0.00000    0.000     1
  16   24   0.00030  0.00590  0.06800  9900.00     0.00      0.00  0.00000    0.000     1
  17   18   0.00070  0.00820  0.13190  9900.00     0.00      0.00  0.00000    0.000     1
  17   27   0.00130  0.01730  0.32160  9900.00     0.00      0.00  0.00000    0.000     1
  21   22   0.00080  0.01400  0.25650  9900.00     0.00      0.00  0.00000    0.000     1
  22   23   0.00060  0.00960  0.18460  9900.00     0.00      0.00  0.00000    0.000     1
  23   24   0.00220  0.03500  0.36100  9900.00     0.00      0.00  0.00000    0.000     1
  25   26   0.00320  0.03230  0.51300  9900.00     0.00      0.00  0.00000    0.000     1
  26   27   0.00140  0.01470  0.23960  9900.00     0.00      0.00  0.00000    0.000     1
  26   28   0.00430  0.04740  0.78020  9900.00     0.00      0.00  0.00000    0.000     1
  26   29   0.00570  0.06250  1.02900  9900.00     0.00      0.00  0.00000    0.000     1
  28   29   0.00140  0.01510  0.24900  9900.00     0.00      0.00  0.00000    0.000     1
  12   11   0.00160  0.0435   0.0000   9900.00     0.00      0.00  1.00600    0.000     1
  12   13   0.00160  0.0435   0.0000   9900.00     0.00      0.00  1.00600    0.000     1
   6   31   0.00000  0.02500  0.00000  9900.00     0.00      0.00  1.07000    0.000     1
  10   32   0.00000  0.02000  0.00000  9900.00     0.00      0.00  1.07000    0.000     1
  19   33   0.00070  0.01420  0.00000  9900.00     0.00      0.00  1.07000    0.000     1
  20   34   0.00090  0.01800  0.00000  9900.00     0.00      0.00  1.00900    0.000     1
  22   35   0.00000  0.01430  0.00000  9900.00     0.00      0.00  1.02500    0.000     1
  23   36   0.00050  0.02720  0.00000  9900.00     0.00      0.00  1.00000    0.000     1
  25   37   0.00060  0.02320  0.00000  9900.00     0.00      0.00  1.02500    0.000     1
   2   30   0.00000  0.01810  0.00000  9900.00     0.00      0.00  1.02500    0.000     1
  29   38   0.00080  0.01560  0.00000  9900.00     0.00      0.00  1.02500    0.000     1
  19   20   0.00070  0.01380  0.00000  9900.00     0.00      0.00  1.06000    0.000     1
];	

areas = [
   1      1
];	

gencost = [
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.01    0.3    0.2
   2     0.00        0.00         3 0.006    0.3    0.2
   2     0.00        0.00         3 0.006    0.3    0.2
];	

return;	
