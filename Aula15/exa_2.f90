!Exercício array
implicit none
real, allocatable :: x(:)
real :: y
integer :: I, N
open(1, file = "ex.dat")
N=0
do
  read(1,*,End= 100)y
  N = N + 1
end do
100 close(1)
print*, N
allocate(x(N))
open(2, file = "ex.dat")
do I=1, N
  read(2,*) x(I)
end do
print*, sum(x), (sum(x)/N)
end
