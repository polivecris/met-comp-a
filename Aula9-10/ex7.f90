! Exercício 7
implicit none
real :: a, b, c, x1, x2, x
complex :: d, xc1, xc2

DO
Print*, "Digite os coeficientes a, b, c"
READ(*,*,Err=100) a, b, c
exit
100 print*, "Dado errado"
END DO

if ((b**2-4*a*c) < 0) then
  print*,"Raiz complexa"
  d = (b**2-4*a*c)
  xc1 = (-b-sqrt(d))/2*a
  xc2 = (-b+sqrt(d))/2*a
print*, "x1=", xc1
print*, "x2=", xc2

else if ((b**2-4*a*c) == 0) then
  print*,"Raiz dupla"
  x = (-b-sqrt(b**2-4*a*c))/2*a
  print*, "x =",x
  
else if ((b**2-4*a*c) > 0) then
x1 = (-b-sqrt(b**2-4*a*c))/2*a
x2 = (-b+sqrt(b**2-4*a*c))/2*a
print*, "x1=", x1
print*, "x2=", x2
end if
end