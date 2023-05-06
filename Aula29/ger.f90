implicit none
real :: xo,xn,a,b,x,y,dx,dy
integer :: I, N, seed

print*, "Digite o intervalo [xo,xn], os coeficientes a e b e N"
read*, xo, xn, a, b, N

dx=(xn-xo)/N
open(1,file="dados.dat")

print*, "Digite seed"
read*, seed
call srand(seed)

do I=0, N
x = xo + I*dx
y = a + b*x + (rand()-0.5)
dy = (rand()-0.5)*0.1
write(1,*) x, y
end do

close(1)
end program
