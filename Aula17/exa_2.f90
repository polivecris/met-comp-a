!exercício com array
implicit none
real :: a, b, c
real, allocatable :: d(:)
integer :: I, N

open(1, file = "a.dat")
N=0
do
read(1,*,End= 100)a
N = N + 1
end do
100 close(1)
allocate(d(N))

open(1, file = "a.dat")
open(2, file = "b.dat")
open(3, file = "c.dat")

do I = 1, N
read(1,*)a
read(2,*)b
read(3,*)c
  d(I) = (a+b+c)/3 
end do
print*, d
end