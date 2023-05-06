  implicit none
  real :: xi, yi, x, y, xy, x2
  real :: det, a, b, n
  open(1, file = "dados.dat")
  n=0; x=0; y=0; xy=0; x2=0

  do
     read(1,*,end=100) xi, yi
     n=n+1
     x=x+xi
     y=y+yi
     x2=x2+(xi**2)
     xy=xy+(xi*yi)
  end do
100 det=(n*x2)-(x**2)
  a=((y*x2)-(x*xy))/det
  b=((n*xy)-(x*y))/det

  print*, "a=",a,"b=",b
end program
