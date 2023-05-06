! Exercício 5 com funções
program bhaskara
  implicit none
  real, external :: x1, x2
  complex, external :: xc1, xc2
  real :: a, b, c
  do
  print*, "Digite os coeficientes a, b, c"
  read(*,*,Err=100) a, b, c
  exit
  100 print*, "Dados errados"
end do
if ((b**2-4*a*c) < 0) then
  print*,"Raiz complexa"
  print*, "x1=", xc1(a,b,c)
  print*, "x2=", xc2(a,b,c)

else if ((b**2-4*a*c) == 0) then
  print*,"Raiz dupla"
  print*, "x =", x1(a,b,c)

else if ((b**2-4*a*c) > 0) then
  print*, "x1=", x1(a,b,c)
  print*, "x2=", x2(a,b,c)
end if
end program bhaskara

