!exercício sem arrays
implicit none
real :: a, b, c, d

open(1,file="a.dat")
open(2,file="b.dat")
open(3,file="c.dat")
open(4,file="d.dat")

do
read(1,*, End=100)a
read(2,*, End=100)b
read(3,*, End=100)c
d = (a+b+c)/3
write(4,*)d
print*, a,b,c,d
end do
100 stop
end