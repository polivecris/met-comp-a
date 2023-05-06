! Função integral
implicit none
real, external :: f
real :: a, b, x, S, dx
integer :: I, N
print*, "Digite a, b e dx"
read *, a, b, dx
N = (b-a)/dx + 1

S=0
do I=0, N
x = a + I*dx
S = S + f(x)*dx
end do
print*, "Integral de f(x) de",a,"até",b,"é igual a",S
end
