!exercício com array
implicit none
real :: a, b
real, allocatable :: x(:), y(:), ysum(:)
integer :: I, N, M, T

M=0
ysum=0

open(1, file = "N1000_f1.05_s1.dat")
do
 read(1,*,end= 100)
 M = M + 1
end do
100 close(1)
allocate(x(M),y(M),ysum(M))
!print*, M

open(2,file = "temp.dat") 
do
 read(2,*,end=101) b
 T = T + 1
end do
101 close(2)
N=T/M
!print*, N 

do
 do I = 1, M
 read(*,*, end=102) x(I), y(I)
 end do
 ysum = ysum + y 
 end do
102 ysum = ysum/N

open(3, file = "N1000_f1.05_sm.dat")
do I = 1, M
!print*, x(I), ysum(I)
write(3,*) x(I), y(I)
end do
close(3)

end
