! Função exercício 5
real function x1(a,b,c)
  implicit none
  real :: a, b, c
  x1 = (-b-sqrt(b**2-4*a*c))/(2*a)
end function x1
