  implicit none
  real, allocatable :: x(:), A(:,:)
  real :: xi, yi, xa, xb, xp
  real, parameter :: dx=0.01
  integer :: N, I, J, K, L, Mi, Mf
  
  N=0
  open(1,file="dados.dat")
  do
     read(1,*,end=100)xi
     N=N+1
     print*, N, xi
  end do
100 close (1)
end
