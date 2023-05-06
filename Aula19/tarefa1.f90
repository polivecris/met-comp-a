! Tarefa 1
program tarefa1
implicit none 
real, external :: f
real :: dt, df, x
print*, "Digite x"
read*, x
dt = 0.001
df = (f(x+dt)-f(x))/dt
print*, df
end program tarefa1
