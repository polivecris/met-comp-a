! Função exercício 5
real function x2(a,b,c)
  implicit none
  real :: a, b, c
  x2 = (-b+sqrt(b**2-4*a*c))/(2*a)
end function x2
