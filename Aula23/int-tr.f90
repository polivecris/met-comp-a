  ! Função integral
  implicit none
  real, external :: f
  real :: a, b, x, Se, Sd, Sm, St, dx
  integer :: I, N, K
  print*, "Digite a e b"
  read *, a, b
  open(1, file = "int2.dat")

  do K=0, 20
     N = 2**K
     dx=(b-a)/N

     Se=0
     do I=0, N-1
        x = a + I*dx
        Se = Se + f(x)
     end do
     Se=Se*dx

     Sd=0
     do I=1, N
        x = a + I*dx
        Sd = Sd + f(x)
     end do
     Sd=Sd*dx

     Sm=0
     do I=1, N
        x = a + (I+0.5)*dx
        Sm = Sm + f(x)
     end do
     Sm=Sm*dx

     St= (f(a)+f(b))/2
     do I=1, N-1
        x = a + I*dx
        St = St + f(x)
     end do
     St = St*dx

     write(1,*) K, N, Se, Sd, Sm, St
  end do
end 
