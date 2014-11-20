# author: Marc Moreau
# email: lares.moreau@gmail.com
# dist-license: GPL 2
# use-license: unlimited
Element[0x0 "CON_HDR_254P_5C_2R_10N__TycoAMP-Latch" "" "" 0 0 0 0 0 100 0x0]
(
  Pin[10000 -5000 6000 2000 8000 3500 "" "1" 0x0101]
  Pin[    0 -5000 6000 2000 8000 3500 "" "3" 0x0001]
  Pin[-10000 -5000 6000 2000 8000 3500 "" "5" 0x0001]
  Pin[10000 5000 6000 2000 8000 3500 "" "2" 0x0001]
  Pin[    0 5000 6000 2000 8000 3500 "" "4" 0x0001]
  Pin[-10000 5000 6000 2000 8000 3500 "" "6" 0x0001]

  ElementLine [30000 -16000 8250 -16000 1000]
  ElementLine [-30000 -16000 -8250 -16000 1000]
  ElementLine [-30000 -16000 -30000 16000 1000]
  ElementLine [-30000 16000 30000 16000 1000]
  ElementLine [30000 16000 30000 -16000 1000]
)
