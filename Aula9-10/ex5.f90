! Exercício 5
implicit none
real :: a, b, c, x1, x2

DO
Print*, "Digite os coeficientes a, b, c"
READ(*,*,Err=100) a, b, c
exit
100 print*, "Dado errado"
END DO
x1 = (-b-sqrt(b**2-4*a*c))/2*a
x2 = (-b+sqrt(b**2-4*a*c))/2*a
print*, "x1=", x1
print*, "x2=", x2
end
