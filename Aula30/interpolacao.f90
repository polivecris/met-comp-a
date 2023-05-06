program interpolacao
  implicit none
  real, allocatable :: xk(:), yk(:)
  real :: x, y, L, P, xa, xb
  real, parameter :: dx=0.01
  integer :: I, J, Ki,Kf, N, c

  N=0
  open(1,file="dados.dat")
  do
     read(1,*,end=100)x
     N=N+1
  end do
100 close(1)
  print*, N

  allocate(xk(N)); allocate(yk(N))

  c=0
  open(2,file="dados.dat")
  do 
     read(2,*,end=101)x,y
     c=c+1
     xk(c)=x
     yk(c)=y
  end do
101 close(2)

  xa=xk(1); xb=xk(N)

  open(3,file="polinomio.dat")
  Kf=(xb-xa)/dx
  do Ki=0, Kf
     x=xa+Ki*dx
     P=0
     do I=1,N
        L=1
        do J=1,N
           if (J .ne. I) L=L*((x-xk(j))/(xk(i)-xk(j)))
        end do
        P=P+yk(i)*L
     end do
     write(3,*)x,P
  end do
  close(3)

end program interpolacao
