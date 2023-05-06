! Exercício 7 com função
complex function xc1(a,b,c)
implicit none
real :: a, b, c
complex :: d
d = b**2 -4.*a*c
  xc1 = ( -b - sqrt(d) )/(2*a)
end function xc1
