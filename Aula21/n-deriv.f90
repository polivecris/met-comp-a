! Função n-ésima derivada
implicit none
real, external :: f
real :: a, b, x, dx, df
integer :: I, N
open(1, file = "df.dat")

print*, "Digite a, b e dx"
read*, a, b, dx
N = (b-a)/dx +1

do I=0, N
x = a + I*dx
df = (f(x+dx)-f(x-dx))/(2*dx)
write(1,*) x, df
end do 

open(2, file = "derivada.dat")
print*, "Digite o número da derivada"
read*, R
do I=1, R
read(1,*) x, df
if (R==1) then
df = df
else
df=((df+dx)-(df-dx))/(2*dx)
end if
write(2,*) x, df
end do

end
