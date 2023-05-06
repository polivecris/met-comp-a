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
  end do
 100 close (1)
  print*, N
  
  allocate(x(N)); x=0; allocate(A(N,N)); A=0

  open(2,file="dados.dat")
  do L=1, N
     read(2,*,end=101)xi,yi
     x(L)=xi
     A(L,1)=yi
  end do
101 close(2)

  xa=x(1); xb=x(N)
  open(3,file="polinomio.dat")
  Mf=(xb-xa)/dx
  do Mi=0, Mf
     xp=xa+Mi*dx

     do J=2, N
        do I=1, (N-J+1)
           k=(I+J-1)
           A(I,J)=(((xp-x(k))*A(I,J-1))-((xp-x(I))*A(I+1,J-1)))/(x(I)-x(K))
        end do
     end do
     write(3,*) xp, A(1,N)
  end do
close(3)
end program
