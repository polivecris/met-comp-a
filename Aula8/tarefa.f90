! Conversão de Celsius para Fahrenheit
implicit none
real :: ic,ij

read*, ic
ij = ic*1.8+32
print*, ij, "temperatura em fahrenheit"
print*, ic, "temperatura em celsius"
end
