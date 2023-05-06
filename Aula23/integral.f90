! Função integral
implicit none
real :: x , dfa, dfb, dx , df , f
integer :: I

open(1,file = "df.dat")
read(1,*) x,dfa
close(1)
print*, x, dfa

open(1,file = "df.dat")
do
read(1,*,end=99) x,dfb
end do
99 close(1)
print*, x, dfb

dx = 0.0001

open(1,file = "df.dat")
open(2,file = "f.dat")

do
read(1,*,end=100) x,df
f = f + df*dx
write(2,*) x,f
end do

100 close(1); close(2)
end program
