!exercício com array
implicit none
real :: a,b
real, allocatable :: x(:), xsum(:)
integer :: I, N, M, T

M=0
xsum=0

open(1, file = "r1.dat")
do
 read(1,*,end= 100) a
 M = M + 1
end do
100 close(1)
allocate(x(M),xsum(M))
print*, M

open(2,file = "temp.dat") 
do
 read(2,*,end=101) b
 T = T + 1
end do
101 close(2)
N=T/M
print*, N 

do
 do I = 1, M
 read(*,*, end=102) x(I)
 end do
 xsum = xsum + x 
 end do
102 xsum = xsum/N

do I = 1, M
print*, xsum(I)
end do

end
