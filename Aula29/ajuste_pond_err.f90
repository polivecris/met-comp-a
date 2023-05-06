program ajuste_pond_err
  implicit none
  real :: xi, yi, dyi, w, wx, wy, wxy, wx2
  real :: det, a, b, wn, err_a, err_b
  open(1, file = "dados.dat")
  n=0; x=0; y=0; xy=0; x2=0

  do
     read(1,*,end=100) xi, yi, dyi
     w=1/(dyi**2)

     wn=wn+1*w
     wx=wx+xi*w
     wy=wy+yi*w
     wx2=wx2+(xi**2)*w
     wxy=wxy+(xi*yi)*w

  end do

100 det=(wn*x2)-(wx**2)
  a=((wy*wx2)-(wx*wxy))/det
  b=((wn*wxy)-(wx*wy))/det

  print*, "a=",a,"b=",b

!Cálculo de erros
err_a=sqrt(wx2/det)
err_b=sqrt(wn/det)
end program ajuste_pond_err
