seq 0 0.001 5 >> 1.dat 
awk '{print $1, ((sin(cos($1)*cos($1))*(sin(cos($1)*cos($1)))*(sqrt($1))))}' 1.dat >> fx.dat

