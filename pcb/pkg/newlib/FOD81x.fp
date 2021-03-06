# author: Jonatan Åkerlind
# email: jonatan@akerlind.nu
# dist-license: GPL3
# use-license: unlimited
Element["" "FOD81X" "" "" 1000 1000 -3mm 2.7mm 0 100 ""]
(
	ElementLine [-3000000nm -2550000nm -3500000nm -2050000nm 200000nm]
	ElementLine [-3500000nm -2050000nm -3500000nm 2550000nm 200000nm]
	ElementLine [3500000nm -2550000nm 3500000nm 2550000nm 200000nm]
	ElementLine [-3500000nm 2550000nm 3500000nm 2550000nm 200000nm]
	ElementLine [-3000000nm -2550000nm 3500000nm -2550000nm 200000nm]
	Pad[-4500000nm -1370000nm -4500000nm -1170000nm 1300000nm 304800nm 1376200nm "1" "1" "square"]
	Pad[-4500000nm 1170000nm -4500000nm 1370000nm 1300000nm 304800nm 1376200nm "2" "2" "square"]
	Pad[4500000nm 1170000nm 4500000nm 1370000nm 1300000nm 304800nm 1376200nm "3" "3" "square"]
	Pad[4500000nm -1370000nm 4500000nm -1170000nm 1300000nm 304800nm 1376200nm "4" "4" "square"]
)
