! Função derivada
implicit none
real, external :: f
real :: a, b, x, dx, df
integer :: I, N
open(1, file = "derivada.dat")

print*, "Digite a, b e dx"
read*, a, b, dx
N = (b-a)/dx +1

do I=0, N
x = a + I*dx
df = (f(x+dx)-f(x-dx))/(2*dx)
write(1,*) x, df
end do

end
