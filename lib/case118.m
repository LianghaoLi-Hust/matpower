function [baseMVA, bus, gen, branch, areas, gencost] = case118
%CASE118    Power flow data for IEEE 118 bus test case.
%   Please see 'help caseformat' for details on the case file format.

%   MATPOWER
%   $Id$

% The test system data was originally in IEEE Common Data Format.
% Its format has been converted to matpower format by cdf2matp.

baseMVA = 100.0; 

%bus type  Pd      Qd       Gs      Bs    area  Vm      Va      baseKV zone   Vmax   Vmin
bus = [
   1  2     51.00    27.00    0.000    0.000   1   0.95500   10.670     0.00  1    1.06000  0.94000
   2  1     20.00     9.00    0.000    0.000   1   0.97100   11.220     0.00  1    1.06000  0.94000
   3  1     39.00    10.00    0.000    0.000   1   0.96800   11.560     0.00  1    1.06000  0.94000
   4  2     39.00    12.00    0.000    0.000   1   0.99800   15.280     0.00  1    1.06000  0.94000
   5  1      0.00     0.00    0.000  -40.000   1   1.00200   15.730     0.00  1    1.06000  0.94000
   6  2     52.00    22.00    0.000    0.000   1   0.99000   13.000     0.00  1    1.06000  0.94000
   7  1     19.00     2.00    0.000    0.000   1   0.98900   12.560     0.00  1    1.06000  0.94000
   8  2     28.00     0.00    0.000    0.000   1   1.01500   20.770     0.00  1    1.06000  0.94000
   9  1      0.00     0.00    0.000    0.000   1   1.04300   28.020     0.00  1    1.06000  0.94000
  10  2      0.00     0.00    0.000    0.000   1   1.05000   35.610     0.00  1    1.06000  0.94000
  11  1     70.00    23.00    0.000    0.000   1   0.98500   12.720     0.00  1    1.06000  0.94000
  12  2     47.00    10.00    0.000    0.000   1   0.99000   12.200     0.00  1    1.06000  0.94000
  13  1     34.00    16.00    0.000    0.000   1   0.96800   11.350     0.00  1    1.06000  0.94000
  14  1     14.00     1.00    0.000    0.000   1   0.98400   11.500     0.00  1    1.06000  0.94000
  15  2     90.00    30.00    0.000    0.000   1   0.97000   11.230     0.00  1    1.06000  0.94000
  16  1     25.00    10.00    0.000    0.000   1   0.98400   11.910     0.00  1    1.06000  0.94000
  17  1     11.00     3.00    0.000    0.000   1   0.99500   13.740     0.00  1    1.06000  0.94000
  18  2     60.00    34.00    0.000    0.000   1   0.97300   11.530     0.00  1    1.06000  0.94000
  19  2     45.00    25.00    0.000    0.000   1   0.96300   11.050     0.00  1    1.06000  0.94000
  20  1     18.00     3.00    0.000    0.000   1   0.95800   11.930     0.00  1    1.06000  0.94000
  21  1     14.00     8.00    0.000    0.000   1   0.95900   13.520     0.00  1    1.06000  0.94000
  22  1     10.00     5.00    0.000    0.000   1   0.97000   16.080     0.00  1    1.06000  0.94000
  23  1      7.00     3.00    0.000    0.000   1   1.00000   21.000     0.00  1    1.06000  0.94000
  24  2     13.00     0.00    0.000    0.000   1   0.99200   20.890     0.00  1    1.06000  0.94000
  25  2      0.00     0.00    0.000    0.000   1   1.05000   27.930     0.00  1    1.06000  0.94000
  26  2      0.00     0.00    0.000    0.000   1   1.01500   29.710     0.00  1    1.06000  0.94000
  27  2     71.00    13.00    0.000    0.000   1   0.96800   15.350     0.00  1    1.06000  0.94000
  28  1     17.00     7.00    0.000    0.000   1   0.96200   13.620     0.00  1    1.06000  0.94000
  29  1     24.00     4.00    0.000    0.000   1   0.96300   12.630     0.00  1    1.06000  0.94000
  30  1      0.00     0.00    0.000    0.000   1   0.96800   18.790     0.00  1    1.06000  0.94000
  31  2     43.00    27.00    0.000    0.000   1   0.96700   12.750     0.00  1    1.06000  0.94000
  32  2     59.00    23.00    0.000    0.000   1   0.96400   14.800     0.00  1    1.06000  0.94000
  33  1     23.00     9.00    0.000    0.000   1   0.97200   10.630     0.00  1    1.06000  0.94000
  34  2     59.00    26.00    0.000   14.000   1   0.98600   11.300     0.00  1    1.06000  0.94000
  35  1     33.00     9.00    0.000    0.000   1   0.98100   10.870     0.00  1    1.06000  0.94000
  36  2     31.00    17.00    0.000    0.000   1   0.98000   10.870     0.00  1    1.06000  0.94000
  37  1      0.00     0.00    0.000  -25.000   1   0.99200   11.770     0.00  1    1.06000  0.94000
  38  1      0.00     0.00    0.000    0.000   1   0.96200   16.910     0.00  1    1.06000  0.94000
  39  1     27.00    11.00    0.000    0.000   1   0.97000    8.410     0.00  1    1.06000  0.94000
  40  2     66.00    23.00    0.000    0.000   1   0.97000    7.350     0.00  1    1.06000  0.94000
  41  1     37.00    10.00    0.000    0.000   1   0.96700    6.920     0.00  1    1.06000  0.94000
  42  2     96.00    23.00    0.000    0.000   1   0.98500    8.530     0.00  1    1.06000  0.94000
  43  1     18.00     7.00    0.000    0.000   1   0.97800   11.280     0.00  1    1.06000  0.94000
  44  1     16.00     8.00    0.000   10.000   1   0.98500   13.820     0.00  1    1.06000  0.94000
  45  1     53.00    22.00    0.000   10.000   1   0.98700   15.670     0.00  1    1.06000  0.94000
  46  2     28.00    10.00    0.000   10.000   1   1.00500   18.490     0.00  1    1.06000  0.94000
  47  1     34.00     0.00    0.000    0.000   1   1.01700   20.730     0.00  1    1.06000  0.94000
  48  1     20.00    11.00    0.000   15.000   1   1.02100   19.930     0.00  1    1.06000  0.94000
  49  2     87.00    30.00    0.000    0.000   1   1.02500   20.940     0.00  1    1.06000  0.94000
  50  1     17.00     4.00    0.000    0.000   1   1.00100   18.900     0.00  1    1.06000  0.94000
  51  1     17.00     8.00    0.000    0.000   1   0.96700   16.280     0.00  1    1.06000  0.94000
  52  1     18.00     5.00    0.000    0.000   1   0.95700   15.320     0.00  1    1.06000  0.94000
  53  1     23.00    11.00    0.000    0.000   1   0.94600   14.350     0.00  1    1.06000  0.94000
  54  2    113.00    32.00    0.000    0.000   1   0.95500   15.260     0.00  1    1.06000  0.94000
  55  2     63.00    22.00    0.000    0.000   1   0.95200   14.970     0.00  1    1.06000  0.94000
  56  2     84.00    18.00    0.000    0.000   1   0.95400   15.160     0.00  1    1.06000  0.94000
  57  1     12.00     3.00    0.000    0.000   1   0.97100   16.360     0.00  1    1.06000  0.94000
  58  1     12.00     3.00    0.000    0.000   1   0.95900   15.510     0.00  1    1.06000  0.94000
  59  2    277.00   113.00    0.000    0.000   1   0.98500   19.370     0.00  1    1.06000  0.94000
  60  1     78.00     3.00    0.000    0.000   1   0.99300   23.150     0.00  1    1.06000  0.94000
  61  2      0.00     0.00    0.000    0.000   1   0.99500   24.040     0.00  1    1.06000  0.94000
  62  2     77.00    14.00    0.000    0.000   1   0.99800   23.430     0.00  1    1.06000  0.94000
  63  1      0.00     0.00    0.000    0.000   1   0.96900   22.750     0.00  1    1.06000  0.94000
  64  1      0.00     0.00    0.000    0.000   1   0.98400   24.520     0.00  1    1.06000  0.94000
  65  2      0.00     0.00    0.000    0.000   1   1.00500   27.650     0.00  1    1.06000  0.94000
  66  2     39.00    18.00    0.000    0.000   1   1.05000   27.480     0.00  1    1.06000  0.94000
  67  1     28.00     7.00    0.000    0.000   1   1.02000   24.840     0.00  1    1.06000  0.94000
  68  1      0.00     0.00    0.000    0.000   1   1.00300   27.550     0.00  1    1.06000  0.94000
  69  3      0.00     0.00    0.000    0.000   1   1.03500   30.000     0.00  1    1.06000  0.94000
  70  2     66.00    20.00    0.000    0.000   1   0.98400   22.580     0.00  1    1.06000  0.94000
  71  1      0.00     0.00    0.000    0.000   1   0.98700   22.150     0.00  1    1.06000  0.94000
  72  2     12.00     0.00    0.000    0.000   1   0.98000   20.980     0.00  1    1.06000  0.94000
  73  2      6.00     0.00    0.000    0.000   1   0.99100   21.940     0.00  1    1.06000  0.94000
  74  2     68.00    27.00    0.000   12.000   1   0.95800   21.640     0.00  1    1.06000  0.94000
  75  1     47.00    11.00    0.000    0.000   1   0.96700   22.910     0.00  1    1.06000  0.94000
  76  2     68.00    36.00    0.000    0.000   1   0.94300   21.770     0.00  1    1.06000  0.94000
  77  2     61.00    28.00    0.000    0.000   1   1.00600   26.720     0.00  1    1.06000  0.94000
  78  1     71.00    26.00    0.000    0.000   1   1.00300   26.420     0.00  1    1.06000  0.94000
  79  1     39.00    32.00    0.000   20.000   1   1.00900   26.720     0.00  1    1.06000  0.94000
  80  2    130.00    26.00    0.000    0.000   1   1.04000   28.960     0.00  1    1.06000  0.94000
  81  1      0.00     0.00    0.000    0.000   1   0.99700   28.100     0.00  1    1.06000  0.94000
  82  1     54.00    27.00    0.000   20.000   1   0.98900   27.240     0.00  1    1.06000  0.94000
  83  1     20.00    10.00    0.000   10.000   1   0.98500   28.420     0.00  1    1.06000  0.94000
  84  1     11.00     7.00    0.000    0.000   1   0.98000   30.950     0.00  1    1.06000  0.94000
  85  2     24.00    15.00    0.000    0.000   1   0.98500   32.510     0.00  1    1.06000  0.94000
  86  1     21.00    10.00    0.000    0.000   1   0.98700   31.140     0.00  1    1.06000  0.94000
  87  2      0.00     0.00    0.000    0.000   1   1.01500   31.400     0.00  1    1.06000  0.94000
  88  1     48.00    10.00    0.000    0.000   1   0.98700   35.640     0.00  1    1.06000  0.94000
  89  2      0.00     0.00    0.000    0.000   1   1.00500   39.690     0.00  1    1.06000  0.94000
  90  2    163.00    42.00    0.000    0.000   1   0.98500   33.290     0.00  1    1.06000  0.94000
  91  2     10.00     0.00    0.000    0.000   1   0.98000   33.310     0.00  1    1.06000  0.94000
  92  2     65.00    10.00    0.000    0.000   1   0.99300   33.800     0.00  1    1.06000  0.94000
  93  1     12.00     7.00    0.000    0.000   1   0.98700   30.790     0.00  1    1.06000  0.94000
  94  1     30.00    16.00    0.000    0.000   1   0.99100   28.640     0.00  1    1.06000  0.94000
  95  1     42.00    31.00    0.000    0.000   1   0.98100   27.670     0.00  1    1.06000  0.94000
  96  1     38.00    15.00    0.000    0.000   1   0.99300   27.510     0.00  1    1.06000  0.94000
  97  1     15.00     9.00    0.000    0.000   1   1.01100   27.880     0.00  1    1.06000  0.94000
  98  1     34.00     8.00    0.000    0.000   1   1.02400   27.400     0.00  1    1.06000  0.94000
  99  2     42.00     0.00    0.000    0.000   1   1.01000   27.040     0.00  1    1.06000  0.94000
 100  2     37.00    18.00    0.000    0.000   1   1.01700   28.030     0.00  1    1.06000  0.94000
 101  1     22.00    15.00    0.000    0.000   1   0.99300   29.610     0.00  1    1.06000  0.94000
 102  1      5.00     3.00    0.000    0.000   1   0.99100   32.300     0.00  1    1.06000  0.94000
 103  2     23.00    16.00    0.000    0.000   1   1.00100   24.440     0.00  1    1.06000  0.94000
 104  2     38.00    25.00    0.000    0.000   1   0.97100   21.690     0.00  1    1.06000  0.94000
 105  2     31.00    26.00    0.000   20.000   1   0.96500   20.570     0.00  1    1.06000  0.94000
 106  1     43.00    16.00    0.000    0.000   1   0.96200   20.320     0.00  1    1.06000  0.94000
 107  2     50.00    12.00    0.000    6.000   1   0.95200   17.530     0.00  1    1.06000  0.94000
 108  1      2.00     1.00    0.000    0.000   1   0.96700   19.380     0.00  1    1.06000  0.94000
 109  1      8.00     3.00    0.000    0.000   1   0.96700   18.930     0.00  1    1.06000  0.94000
 110  2     39.00    30.00    0.000    6.000   1   0.97300   18.090     0.00  1    1.06000  0.94000
 111  2      0.00     0.00    0.000    0.000   1   0.98000   19.740     0.00  1    1.06000  0.94000
 112  2     68.00    13.00    0.000    0.000   1   0.97500   14.990     0.00  1    1.06000  0.94000
 113  2      6.00     0.00    0.000    0.000   1   0.99300   13.740     0.00  1    1.06000  0.94000
 114  1      8.00     3.00    0.000    0.000   1   0.96000   14.460     0.00  1    1.06000  0.94000
 115  1     22.00     7.00    0.000    0.000   1   0.96000   14.460     0.00  1    1.06000  0.94000
 116  2    184.00     0.00    0.000    0.000   1   1.00500   27.120     0.00  1    1.06000  0.94000
 117  1     20.00     8.00    0.000    0.000   1   0.97400   10.670     0.00  1    1.06000  0.94000
 118  1     33.00    15.00    0.000    0.000   1   0.94900   21.920     0.00  1    1.06000  0.94000
];

%bus  Pg       Qg      Qmax    Qmin   Vsp      base  status   Pmax    Pmin
gen = [
   1     0.00     0.00    15.00    -5.00  0.95500   100.00    1      100.00     0.00
   4     0.00     0.00   300.00  -300.00  0.99800   100.00    1      100.00     0.00
   6     0.00     0.00    50.00   -13.00  0.99000   100.00    1      100.00     0.00
   8     0.00     0.00   300.00  -300.00  1.01500   100.00    1      100.00     0.00
  10   450.00     0.00   200.00  -147.00  1.05000   100.00    1      550.00     0.00
  12    85.00     0.00   120.00   -35.00  0.99000   100.00    1      185.00     0.00
  15     0.00     0.00    30.00   -10.00  0.97000   100.00    1      100.00     0.00
  18     0.00     0.00    50.00   -16.00  0.97300   100.00    1      100.00     0.00
  19     0.00     0.00    24.00    -8.00  0.96200   100.00    1      100.00     0.00
  24     0.00     0.00   300.00  -300.00  0.99200   100.00    1      100.00     0.00
  25   220.00     0.00   140.00   -47.00  1.05000   100.00    1      320.00     0.00
  26   314.00     0.00  1000.00 -1000.00  1.01500   100.00    1      414.00     0.00
  27     0.00     0.00   300.00  -300.00  0.96800   100.00    1      100.00     0.00
  31     7.00     0.00   300.00  -300.00  0.96700   100.00    1      107.00     0.00
  32     0.00     0.00    42.00   -14.00  0.96300   100.00    1      100.00     0.00
  34     0.00     0.00    24.00    -8.00  0.98400   100.00    1      100.00     0.00
  36     0.00     0.00    24.00    -8.00  0.98000   100.00    1      100.00     0.00
  40     0.00     0.00   300.00  -300.00  0.97000   100.00    1      100.00     0.00
  42     0.00     0.00   300.00  -300.00  0.98500   100.00    1      100.00     0.00
  46    19.00     0.00   100.00  -100.00  1.00500   100.00    1      119.00     0.00
  49   204.00     0.00   210.00   -85.00  1.02500   100.00    1      304.00     0.00
  54    48.00     0.00   300.00  -300.00  0.95500   100.00    1      148.00     0.00
  55     0.00     0.00    23.00    -8.00  0.95200   100.00    1      100.00     0.00
  56     0.00     0.00    15.00    -8.00  0.95400   100.00    1      100.00     0.00
  59   155.00     0.00   180.00   -60.00  0.98500   100.00    1      255.00     0.00
  61   160.00     0.00   300.00  -100.00  0.99500   100.00    1      260.00     0.00
  62     0.00     0.00    20.00   -20.00  0.99800   100.00    1      100.00     0.00
  65   391.00     0.00   200.00   -67.00  1.00500   100.00    1      491.00     0.00
  66   392.00     0.00   200.00   -67.00  1.05000   100.00    1      492.00     0.00
  69   516.40     0.00   300.00  -300.00  1.03500   100.00    1      805.20     0.00
  70     0.00     0.00    32.00   -10.00  0.98400   100.00    1      100.00     0.00
  72     0.00     0.00   100.00  -100.00  0.98000   100.00    1      100.00     0.00
  73     0.00     0.00   100.00  -100.00  0.99100   100.00    1      100.00     0.00
  74     0.00     0.00     9.00    -6.00  0.95800   100.00    1      100.00     0.00
  76     0.00     0.00    23.00    -8.00  0.94300   100.00    1      100.00     0.00
  77     0.00     0.00    70.00   -20.00  1.00600   100.00    1      100.00     0.00
  80   477.00     0.00   280.00  -165.00  1.04000   100.00    1      577.00     0.00
  85     0.00     0.00    23.00    -8.00  0.98500   100.00    1      100.00     0.00
  87     4.00     0.00  1000.00  -100.00  1.01500   100.00    1      104.00     0.00
  89   607.00     0.00   300.00  -210.00  1.00500   100.00    1      707.00     0.00
  90     0.00     0.00   300.00  -300.00  0.98500   100.00    1      100.00     0.00
  91     0.00     0.00   100.00  -100.00  0.98000   100.00    1      100.00     0.00
  92     0.00     0.00     9.00    -3.00  0.99000   100.00    1      100.00     0.00
  99     0.00     0.00   100.00  -100.00  1.01000   100.00    1      100.00     0.00
 100   252.00     0.00   155.00   -50.00  1.01700   100.00    1      352.00     0.00
 103    40.00     0.00    40.00   -15.00  1.01000   100.00    1      140.00     0.00
 104     0.00     0.00    23.00    -8.00  0.97100   100.00    1      100.00     0.00
 105     0.00     0.00    23.00    -8.00  0.96500   100.00    1      100.00     0.00
 107     0.00     0.00   200.00  -200.00  0.95200   100.00    1      100.00     0.00
 110     0.00     0.00    23.00    -8.00  0.97300   100.00    1      100.00     0.00
 111    36.00     0.00  1000.00  -100.00  0.98000   100.00    1      136.00     0.00
 112     0.00     0.00  1000.00  -100.00  0.97500   100.00    1      100.00     0.00
 113     0.00     0.00   200.00  -100.00  0.99300   100.00    1      100.00     0.00
 116     0.00     0.00  1000.00 -1000.00  1.00500   100.00    1      100.00     0.00
];

%fbus tbus      r     x     b       ratea   rateb   ratec ratio   angle  statu
branch = [
   1    2   0.03030  0.09990  0.02540  9900.00     0.00      0.00  0.00000    0.000     1
   1    3   0.01290  0.04240  0.01082  9900.00     0.00      0.00  0.00000    0.000     1
   4    5   0.00176  0.00798  0.00210  9900.00     0.00      0.00  0.00000    0.000     1
   3    5   0.02410  0.10800  0.02840  9900.00     0.00      0.00  0.00000    0.000     1
   5    6   0.01190  0.05400  0.01426  9900.00     0.00      0.00  0.00000    0.000     1
   6    7   0.00459  0.02080  0.00550  9900.00     0.00      0.00  0.00000    0.000     1
   8    9   0.00244  0.03050  1.16200  9900.00     0.00      0.00  0.00000    0.000     1
   8    5   0.00000  0.02670  0.00000  9900.00     0.00      0.00  0.98500    0.000     1
   9   10   0.00258  0.03220  1.23000  9900.00     0.00      0.00  0.00000    0.000     1
   4   11   0.02090  0.06880  0.01748  9900.00     0.00      0.00  0.00000    0.000     1
   5   11   0.02030  0.06820  0.01738  9900.00     0.00      0.00  0.00000    0.000     1
  11   12   0.00595  0.01960  0.00502  9900.00     0.00      0.00  0.00000    0.000     1
   2   12   0.01870  0.06160  0.01572  9900.00     0.00      0.00  0.00000    0.000     1
   3   12   0.04840  0.16000  0.04060  9900.00     0.00      0.00  0.00000    0.000     1
   7   12   0.00862  0.03400  0.00874  9900.00     0.00      0.00  0.00000    0.000     1
  11   13   0.02225  0.07310  0.01876  9900.00     0.00      0.00  0.00000    0.000     1
  12   14   0.02150  0.07070  0.01816  9900.00     0.00      0.00  0.00000    0.000     1
  13   15   0.07440  0.24440  0.06268  9900.00     0.00      0.00  0.00000    0.000     1
  14   15   0.05950  0.19500  0.05020  9900.00     0.00      0.00  0.00000    0.000     1
  12   16   0.02120  0.08340  0.02140  9900.00     0.00      0.00  0.00000    0.000     1
  15   17   0.01320  0.04370  0.04440  9900.00     0.00      0.00  0.00000    0.000     1
  16   17   0.04540  0.18010  0.04660  9900.00     0.00      0.00  0.00000    0.000     1
  17   18   0.01230  0.05050  0.01298  9900.00     0.00      0.00  0.00000    0.000     1
  18   19   0.01119  0.04930  0.01142  9900.00     0.00      0.00  0.00000    0.000     1
  19   20   0.02520  0.11700  0.02980  9900.00     0.00      0.00  0.00000    0.000     1
  15   19   0.01200  0.03940  0.01010  9900.00     0.00      0.00  0.00000    0.000     1
  20   21   0.01830  0.08490  0.02160  9900.00     0.00      0.00  0.00000    0.000     1
  21   22   0.02090  0.09700  0.02460  9900.00     0.00      0.00  0.00000    0.000     1
  22   23   0.03420  0.15900  0.04040  9900.00     0.00      0.00  0.00000    0.000     1
  23   24   0.01350  0.04920  0.04980  9900.00     0.00      0.00  0.00000    0.000     1
  23   25   0.01560  0.08000  0.08640  9900.00     0.00      0.00  0.00000    0.000     1
  26   25   0.00000  0.03820  0.00000  9900.00     0.00      0.00  0.96000    0.000     1
  25   27   0.03180  0.16300  0.17640  9900.00     0.00      0.00  0.00000    0.000     1
  27   28   0.01913  0.08550  0.02160  9900.00     0.00      0.00  0.00000    0.000     1
  28   29   0.02370  0.09430  0.02380  9900.00     0.00      0.00  0.00000    0.000     1
  30   17   0.00000  0.03880  0.00000  9900.00     0.00      0.00  0.96000    0.000     1
   8   30   0.00431  0.05040  0.51400  9900.00     0.00      0.00  0.00000    0.000     1
  26   30   0.00799  0.08600  0.90800  9900.00     0.00      0.00  0.00000    0.000     1
  17   31   0.04740  0.15630  0.03990  9900.00     0.00      0.00  0.00000    0.000     1
  29   31   0.01080  0.03310  0.00830  9900.00     0.00      0.00  0.00000    0.000     1
  23   32   0.03170  0.11530  0.11730  9900.00     0.00      0.00  0.00000    0.000     1
  31   32   0.02980  0.09850  0.02510  9900.00     0.00      0.00  0.00000    0.000     1
  27   32   0.02290  0.07550  0.01926  9900.00     0.00      0.00  0.00000    0.000     1
  15   33   0.03800  0.12440  0.03194  9900.00     0.00      0.00  0.00000    0.000     1
  19   34   0.07520  0.24700  0.06320  9900.00     0.00      0.00  0.00000    0.000     1
  35   36   0.00224  0.01020  0.00268  9900.00     0.00      0.00  0.00000    0.000     1
  35   37   0.01100  0.04970  0.01318  9900.00     0.00      0.00  0.00000    0.000     1
  33   37   0.04150  0.14200  0.03660  9900.00     0.00      0.00  0.00000    0.000     1
  34   36   0.00871  0.02680  0.00568  9900.00     0.00      0.00  0.00000    0.000     1
  34   37   0.00256  0.00940  0.00984  9900.00     0.00      0.00  0.00000    0.000     1
  38   37   0.00000  0.03750  0.00000  9900.00     0.00      0.00  0.93500    0.000     1
  37   39   0.03210  0.10600  0.02700  9900.00     0.00      0.00  0.00000    0.000     1
  37   40   0.05930  0.16800  0.04200  9900.00     0.00      0.00  0.00000    0.000     1
  30   38   0.00464  0.05400  0.42200  9900.00     0.00      0.00  0.00000    0.000     1
  39   40   0.01840  0.06050  0.01552  9900.00     0.00      0.00  0.00000    0.000     1
  40   41   0.01450  0.04870  0.01222  9900.00     0.00      0.00  0.00000    0.000     1
  40   42   0.05550  0.18300  0.04660  9900.00     0.00      0.00  0.00000    0.000     1
  41   42   0.04100  0.13500  0.03440  9900.00     0.00      0.00  0.00000    0.000     1
  43   44   0.06080  0.24540  0.06068  9900.00     0.00      0.00  0.00000    0.000     1
  34   43   0.04130  0.16810  0.04226  9900.00     0.00      0.00  0.00000    0.000     1
  44   45   0.02240  0.09010  0.02240  9900.00     0.00      0.00  0.00000    0.000     1
  45   46   0.04000  0.13560  0.03320  9900.00     0.00      0.00  0.00000    0.000     1
  46   47   0.03800  0.12700  0.03160  9900.00     0.00      0.00  0.00000    0.000     1
  46   48   0.06010  0.18900  0.04720  9900.00     0.00      0.00  0.00000    0.000     1
  47   49   0.01910  0.06250  0.01604  9900.00     0.00      0.00  0.00000    0.000     1
  42   49   0.07150  0.32300  0.08600  9900.00     0.00      0.00  0.00000    0.000     1
  42   49   0.07150  0.32300  0.08600  9900.00     0.00      0.00  0.00000    0.000     1
  45   49   0.06840  0.18600  0.04440  9900.00     0.00      0.00  0.00000    0.000     1
  48   49   0.01790  0.05050  0.01258  9900.00     0.00      0.00  0.00000    0.000     1
  49   50   0.02670  0.07520  0.01874  9900.00     0.00      0.00  0.00000    0.000     1
  49   51   0.04860  0.13700  0.03420  9900.00     0.00      0.00  0.00000    0.000     1
  51   52   0.02030  0.05880  0.01396  9900.00     0.00      0.00  0.00000    0.000     1
  52   53   0.04050  0.16350  0.04058  9900.00     0.00      0.00  0.00000    0.000     1
  53   54   0.02630  0.12200  0.03100  9900.00     0.00      0.00  0.00000    0.000     1
  49   54   0.07300  0.28900  0.07380  9900.00     0.00      0.00  0.00000    0.000     1
  49   54   0.08690  0.29100  0.07300  9900.00     0.00      0.00  0.00000    0.000     1
  54   55   0.01690  0.07070  0.02020  9900.00     0.00      0.00  0.00000    0.000     1
  54   56   0.00275  0.00955  0.00732  9900.00     0.00      0.00  0.00000    0.000     1
  55   56   0.00488  0.01510  0.00374  9900.00     0.00      0.00  0.00000    0.000     1
  56   57   0.03430  0.09660  0.02420  9900.00     0.00      0.00  0.00000    0.000     1
  50   57   0.04740  0.13400  0.03320  9900.00     0.00      0.00  0.00000    0.000     1
  56   58   0.03430  0.09660  0.02420  9900.00     0.00      0.00  0.00000    0.000     1
  51   58   0.02550  0.07190  0.01788  9900.00     0.00      0.00  0.00000    0.000     1
  54   59   0.05030  0.22930  0.05980  9900.00     0.00      0.00  0.00000    0.000     1
  56   59   0.08250  0.25100  0.05690  9900.00     0.00      0.00  0.00000    0.000     1
  56   59   0.08030  0.23900  0.05360  9900.00     0.00      0.00  0.00000    0.000     1
  55   59   0.04739  0.21580  0.05646  9900.00     0.00      0.00  0.00000    0.000     1
  59   60   0.03170  0.14500  0.03760  9900.00     0.00      0.00  0.00000    0.000     1
  59   61   0.03280  0.15000  0.03880  9900.00     0.00      0.00  0.00000    0.000     1
  60   61   0.00264  0.01350  0.01456  9900.00     0.00      0.00  0.00000    0.000     1
  60   62   0.01230  0.05610  0.01468  9900.00     0.00      0.00  0.00000    0.000     1
  61   62   0.00824  0.03760  0.00980  9900.00     0.00      0.00  0.00000    0.000     1
  63   59   0.00000  0.03860  0.00000  9900.00     0.00      0.00  0.96000    0.000     1
  63   64   0.00172  0.02000  0.21600  9900.00     0.00      0.00  0.00000    0.000     1
  64   61   0.00000  0.02680  0.00000  9900.00     0.00      0.00  0.98500    0.000     1
  38   65   0.00901  0.09860  1.04600  9900.00     0.00      0.00  0.00000    0.000     1
  64   65   0.00269  0.03020  0.38000  9900.00     0.00      0.00  0.00000    0.000     1
  49   66   0.01800  0.09190  0.02480  9900.00     0.00      0.00  0.00000    0.000     1
  49   66   0.01800  0.09190  0.02480  9900.00     0.00      0.00  0.00000    0.000     1
  62   66   0.04820  0.21800  0.05780  9900.00     0.00      0.00  0.00000    0.000     1
  62   67   0.02580  0.11700  0.03100  9900.00     0.00      0.00  0.00000    0.000     1
  65   66   0.00000  0.03700  0.00000  9900.00     0.00      0.00  0.93500    0.000     1
  66   67   0.02240  0.10150  0.02682  9900.00     0.00      0.00  0.00000    0.000     1
  65   68   0.00138  0.01600  0.63800  9900.00     0.00      0.00  0.00000    0.000     1
  47   69   0.08440  0.27780  0.07092  9900.00     0.00      0.00  0.00000    0.000     1
  49   69   0.09850  0.32400  0.08280  9900.00     0.00      0.00  0.00000    0.000     1
  68   69   0.00000  0.03700  0.00000  9900.00     0.00      0.00  0.93500    0.000     1
  69   70   0.03000  0.12700  0.12200  9900.00     0.00      0.00  0.00000    0.000     1
  24   70   0.00221  0.41150  0.10198  9900.00     0.00      0.00  0.00000    0.000     1
  70   71   0.00882  0.03550  0.00878  9900.00     0.00      0.00  0.00000    0.000     1
  24   72   0.04880  0.19600  0.04880  9900.00     0.00      0.00  0.00000    0.000     1
  71   72   0.04460  0.18000  0.04444  9900.00     0.00      0.00  0.00000    0.000     1
  71   73   0.00866  0.04540  0.01178  9900.00     0.00      0.00  0.00000    0.000     1
  70   74   0.04010  0.13230  0.03368  9900.00     0.00      0.00  0.00000    0.000     1
  70   75   0.04280  0.14100  0.03600  9900.00     0.00      0.00  0.00000    0.000     1
  69   75   0.04050  0.12200  0.12400  9900.00     0.00      0.00  0.00000    0.000     1
  74   75   0.01230  0.04060  0.01034  9900.00     0.00      0.00  0.00000    0.000     1
  76   77   0.04440  0.14800  0.03680  9900.00     0.00      0.00  0.00000    0.000     1
  69   77   0.03090  0.10100  0.10380  9900.00     0.00      0.00  0.00000    0.000     1
  75   77   0.06010  0.19990  0.04978  9900.00     0.00      0.00  0.00000    0.000     1
  77   78   0.00376  0.01240  0.01264  9900.00     0.00      0.00  0.00000    0.000     1
  78   79   0.00546  0.02440  0.00648  9900.00     0.00      0.00  0.00000    0.000     1
  77   80   0.01700  0.04850  0.04720  9900.00     0.00      0.00  0.00000    0.000     1
  77   80   0.02940  0.10500  0.02280  9900.00     0.00      0.00  0.00000    0.000     1
  79   80   0.01560  0.07040  0.01870  9900.00     0.00      0.00  0.00000    0.000     1
  68   81   0.00175  0.02020  0.80800  9900.00     0.00      0.00  0.00000    0.000     1
  81   80   0.00000  0.03700  0.00000  9900.00     0.00      0.00  0.93500    0.000     1
  77   82   0.02980  0.08530  0.08174  9900.00     0.00      0.00  0.00000    0.000     1
  82   83   0.01120  0.03665  0.03796  9900.00     0.00      0.00  0.00000    0.000     1
  83   84   0.06250  0.13200  0.02580  9900.00     0.00      0.00  0.00000    0.000     1
  83   85   0.04300  0.14800  0.03480  9900.00     0.00      0.00  0.00000    0.000     1
  84   85   0.03020  0.06410  0.01234  9900.00     0.00      0.00  0.00000    0.000     1
  85   86   0.03500  0.12300  0.02760  9900.00     0.00      0.00  0.00000    0.000     1
  86   87   0.02828  0.20740  0.04450  9900.00     0.00      0.00  0.00000    0.000     1
  85   88   0.02000  0.10200  0.02760  9900.00     0.00      0.00  0.00000    0.000     1
  85   89   0.02390  0.17300  0.04700  9900.00     0.00      0.00  0.00000    0.000     1
  88   89   0.01390  0.07120  0.01934  9900.00     0.00      0.00  0.00000    0.000     1
  89   90   0.05180  0.18800  0.05280  9900.00     0.00      0.00  0.00000    0.000     1
  89   90   0.02380  0.09970  0.10600  9900.00     0.00      0.00  0.00000    0.000     1
  90   91   0.02540  0.08360  0.02140  9900.00     0.00      0.00  0.00000    0.000     1
  89   92   0.00990  0.05050  0.05480  9900.00     0.00      0.00  0.00000    0.000     1
  89   92   0.03930  0.15810  0.04140  9900.00     0.00      0.00  0.00000    0.000     1
  91   92   0.03870  0.12720  0.03268  9900.00     0.00      0.00  0.00000    0.000     1
  92   93   0.02580  0.08480  0.02180  9900.00     0.00      0.00  0.00000    0.000     1
  92   94   0.04810  0.15800  0.04060  9900.00     0.00      0.00  0.00000    0.000     1
  93   94   0.02230  0.07320  0.01876  9900.00     0.00      0.00  0.00000    0.000     1
  94   95   0.01320  0.04340  0.01110  9900.00     0.00      0.00  0.00000    0.000     1
  80   96   0.03560  0.18200  0.04940  9900.00     0.00      0.00  0.00000    0.000     1
  82   96   0.01620  0.05300  0.05440  9900.00     0.00      0.00  0.00000    0.000     1
  94   96   0.02690  0.08690  0.02300  9900.00     0.00      0.00  0.00000    0.000     1
  80   97   0.01830  0.09340  0.02540  9900.00     0.00      0.00  0.00000    0.000     1
  80   98   0.02380  0.10800  0.02860  9900.00     0.00      0.00  0.00000    0.000     1
  80   99   0.04540  0.20600  0.05460  9900.00     0.00      0.00  0.00000    0.000     1
  92  100   0.06480  0.29500  0.04720  9900.00     0.00      0.00  0.00000    0.000     1
  94  100   0.01780  0.05800  0.06040  9900.00     0.00      0.00  0.00000    0.000     1
  95   96   0.01710  0.05470  0.01474  9900.00     0.00      0.00  0.00000    0.000     1
  96   97   0.01730  0.08850  0.02400  9900.00     0.00      0.00  0.00000    0.000     1
  98  100   0.03970  0.17900  0.04760  9900.00     0.00      0.00  0.00000    0.000     1
  99  100   0.01800  0.08130  0.02160  9900.00     0.00      0.00  0.00000    0.000     1
 100  101   0.02770  0.12620  0.03280  9900.00     0.00      0.00  0.00000    0.000     1
  92  102   0.01230  0.05590  0.01464  9900.00     0.00      0.00  0.00000    0.000     1
 101  102   0.02460  0.11200  0.02940  9900.00     0.00      0.00  0.00000    0.000     1
 100  103   0.01600  0.05250  0.05360  9900.00     0.00      0.00  0.00000    0.000     1
 100  104   0.04510  0.20400  0.05410  9900.00     0.00      0.00  0.00000    0.000     1
 103  104   0.04660  0.15840  0.04070  9900.00     0.00      0.00  0.00000    0.000     1
 103  105   0.05350  0.16250  0.04080  9900.00     0.00      0.00  0.00000    0.000     1
 100  106   0.06050  0.22900  0.06200  9900.00     0.00      0.00  0.00000    0.000     1
 104  105   0.00994  0.03780  0.00986  9900.00     0.00      0.00  0.00000    0.000     1
 105  106   0.01400  0.05470  0.01434  9900.00     0.00      0.00  0.00000    0.000     1
 105  107   0.05300  0.18300  0.04720  9900.00     0.00      0.00  0.00000    0.000     1
 105  108   0.02610  0.07030  0.01844  9900.00     0.00      0.00  0.00000    0.000     1
 106  107   0.05300  0.18300  0.04720  9900.00     0.00      0.00  0.00000    0.000     1
 108  109   0.01050  0.02880  0.00760  9900.00     0.00      0.00  0.00000    0.000     1
 103  110   0.03906  0.18130  0.04610  9900.00     0.00      0.00  0.00000    0.000     1
 109  110   0.02780  0.07620  0.02020  9900.00     0.00      0.00  0.00000    0.000     1
 110  111   0.02200  0.07550  0.02000  9900.00     0.00      0.00  0.00000    0.000     1
 110  112   0.02470  0.06400  0.06200  9900.00     0.00      0.00  0.00000    0.000     1
  17  113   0.00913  0.03010  0.00768  9900.00     0.00      0.00  0.00000    0.000     1
  32  113   0.06150  0.20300  0.05180  9900.00     0.00      0.00  0.00000    0.000     1
  32  114   0.01350  0.06120  0.01628  9900.00     0.00      0.00  0.00000    0.000     1
  27  115   0.01640  0.07410  0.01972  9900.00     0.00      0.00  0.00000    0.000     1
 114  115   0.00230  0.01040  0.00276  9900.00     0.00      0.00  0.00000    0.000     1
  68  116   0.00034  0.00405  0.16400  9900.00     0.00      0.00  0.00000    0.000     1
  12  117   0.03290  0.14000  0.03580  9900.00     0.00      0.00  0.00000    0.000     1
  75  118   0.01450  0.04810  0.01198  9900.00     0.00      0.00  0.00000    0.000     1
  76  118   0.01640  0.05440  0.01356  9900.00     0.00      0.00  0.00000    0.000     1
];

areas = [
   1      1
];	

gencost = [
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.217391    0.217391
   2     0.00        0.00         3 0    1.05263    1.05263
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.434783    0.434783
   2     0.00        0.00         3 0    0.308642    0.308642
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    5.88235    5.88235
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    3.44828    3.44828
   2     0.00        0.00         3 0    0.46729    0.46729
   2     0.00        0.00         3 0    1.72414    1.72414
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.606061    0.606061
   2     0.00        0.00         3 0    0.588235    0.588235
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.249377    0.249377
   2     0.00        0.00         3 0    0.248756    0.248756
   2     0.00        0.00         3 0    0.18997    0.18997
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.205339    0.205339
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    7.14286    7.14286
   2     0.00        0.00         3 0    0.162075    0.162075
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    0.381679    0.381679
   2     0.00        0.00         3 0    2    2
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    2.17391    2.17391
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
   2     0.00        0.00         3 0    10    10
];

return;	
