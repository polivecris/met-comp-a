! Exercício 3
implicit none
real :: tc, tf

DO
READ(*,*,Err=100) tc
exit
100 print*, "Dado errado, digite um número"
END DO

tf = tc*1.8+32
print*, "Temperatura Fahrenheit:", tf
print*, "Temperatura Celsius:", tc
end
