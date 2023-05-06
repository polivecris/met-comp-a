program ajuste_err
  implicit none
  real :: xi, yi, dy, x, y, xy, x2
  real :: det, a, err_a, b, err_b, N, sig2, xmed, x2med
  open(1, file = "dados.dat")
  n=0; x=0; y=0; xy=0; x2=0

  do
     read(1,*,end=100) xi, yi, dy
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

!Cálculo de erros
xmed=x/N; x2med=x2/N; sig2=x2med-xmed**2
err_a=dy*sqrt(x2med/(N*sig2))
err_b=dy*sqrt(1/(N*sig2))

end program ajuste_err
