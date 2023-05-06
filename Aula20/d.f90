! Função derivada
implicit none
real function df(x)
real, external :: f
real :: x
real, parameter :: dx = 0.000001
df = (f(x+dx)-f(x-dx))/(2*dx)
end function df
