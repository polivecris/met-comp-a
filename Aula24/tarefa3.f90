  implicit none
  real, external :: f
  real :: x, dx, dn, e, df, a, b
  integer :: I, N

  print*, "Digite [a, b] e N"
  read*, a, b, N
  dn = (b-a)/N
  dx = 0.0001
  e = 0.0000001
  x=a
  do I=0, N
     x = x + I*dn
       do while (abs(f(x)) > e)
        df = (f(x+dx)-f(x-dx))/(2*dx)
        x = x - (f(x)/df)
       print*, I, x, f(x)
     end do
  end do
end program
