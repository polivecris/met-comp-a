! Tarefa 2
program tarefa2
implicit none 
real, external :: f
real :: dt, df, x
print*, "Digite x"
read*, x
open(1, file = "df.dat")
dt=1
do
dt=dt*0.1
df = (f(x+dt)-f(x))/dt
write(1,*) dt, df
end do
close(1)
end program tarefa2
