! Tarefa 3
program tarefa3
implicit none 
real, external :: f
real :: dt, df, x
integer :: I
open(1, file = "df.dat")
dt=0.0001
do I= 0, 40000
x= -2 + I*dt
df = (f(x+dt)-f(x))/dt
write(1,*) x, df
end do
close(1)
end program tarefa3
